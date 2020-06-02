import org.opencv.core.*;
import org.opencv.highgui.HighGui;
import org.opencv.imgproc.Imgproc;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.BlockingDeque;

/**
 * The {@code ShapeIdentifier} class contains methods for
 * identifying benthic species given a video frame.
 */
class ShapeIdentifier {
	// Colors
	private static final Scalar BLACK = new Scalar(0, 0, 0);
	private static final Scalar WHITE = new Scalar(255, 255, 255);
	static final Scalar RED = new Scalar(0, 0, 255);
	private static final Scalar GREEN = new Scalar(0, 255, 0);

	/**
	 * Gets the counts of each type of benthic species in a frame.
	 *
	 * @param frame the video frame to find shapes in
	 * @return an array of counts of each shape
	 */
	static int[] identifyShapes(Mat frame) {
		int[] shapeCounts = new int[4];
		Mat frameCopy = new Mat();
		frame.copyTo(frameCopy);

		Imgproc.cvtColor(frameCopy, frameCopy, Imgproc.COLOR_BGR2GRAY);
		Mat bilateralFrame = new Mat();
		Imgproc.bilateralFilter(frameCopy, bilateralFrame, 15, 40, 80);
		Mat canny = new Mat();
		Imgproc.Canny(bilateralFrame, canny, 60, 180, 3);

		ArrayList<MatOfPoint> contours = new ArrayList<>();
		Imgproc.findContours(canny, contours, new Mat(), Imgproc.RETR_LIST, Imgproc.CHAIN_APPROX_SIMPLE);

		List<Polygon> shapes = new ArrayList<>();
		for (MatOfPoint contour : contours) {
			Polygon shape = identifyShape(contour, frame);
			if (shape != null) {
				shapes.add(shape);
			}
		}

		Point[] centers = new Point[shapes.size()];
		for (int i = 0; i < shapes.size(); i++) {
			centers[i] = shapes.get(i).getCenter();
		}
		for (int a = shapes.size() - 1; a >= 0; a--) {
			for (int b = a - 1; b >= 0; b--) {
				if (Math.hypot(centers[a].x - centers[b].x, centers[a].y - centers[b].y) < 50) {
					shapes.remove(a);
					break;
				}
			}
		}

		for (Polygon shape : shapes) {
			shapeCounts[shape.getID()]++;
		}

		return shapeCounts;
	}

	/**
	 * Creates a polygon object out of a contour and identifies the benthic species.
	 *
	 * @param contour the contour to analise
	 * @param image   the image to draw visualizations on
	 * @return a polygon containing the contour and the recognised species
	 */
	private static Polygon identifyShape(MatOfPoint contour, Mat image) {
		MatOfPoint2f contour2f = new MatOfPoint2f(contour.toArray());
		MatOfPoint2f approx2f = new MatOfPoint2f();
		Imgproc.approxPolyDP(contour2f, approx2f,
				.03 * Imgproc.arcLength(contour2f, true), true);
		MatOfPoint approx = new MatOfPoint();
		approx2f.convertTo(approx, CvType.CV_32S);

		double area = Imgproc.contourArea(approx);
		if (area > 800 && area < 100_000 && Imgproc.isContourConvex(approx)) {
			Polygon polygon = new Polygon(approx2f, null);

			long sides = approx2f.total();
			boolean equilateral = polygon.isEquilateral(20);
			boolean equiangular = polygon.isEquiangular();

			if (sides == 3 && equilateral && area > 1_000) {
				Imgproc.fillConvexPoly(image, approx, GREEN);
				return new Polygon(approx2f, Species.TRIANGLE);
			}

			if (sides == 4 && polygon.isParallelogram()) {
				if (equiangular && polygon.isEquilateral(20)) {
					Imgproc.fillConvexPoly(image, approx, GREEN);
					return new Polygon(approx2f, Species.SQUARE);
				} else if (!polygon.isEquilateral(25)) {
					Imgproc.fillConvexPoly(image, approx, GREEN);
					return new Polygon(approx2f, Species.RECTANGLE);
				}
			}

			if (sides >= 6 && equiangular && equilateral && area > 1_200) {
				Imgproc.fillConvexPoly(image, approx, GREEN);
				return new Polygon(approx2f, Species.CIRCLE);
			}
			Imgproc.fillConvexPoly(image, approx, RED);
		}
		return null;
	}
}
