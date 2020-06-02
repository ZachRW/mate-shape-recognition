import org.opencv.core.Core;
import org.opencv.core.Mat;
import org.opencv.core.Point;
import org.opencv.core.Size;
import org.opencv.highgui.HighGui;
import org.opencv.imgcodecs.Imgcodecs;
import org.opencv.imgproc.Imgproc;
import org.opencv.videoio.VideoCapture;

import java.util.ArrayList;
import java.util.List;

/**
 * The {@code Display} class is the entry point of the program.
 * It manages shape recognition and displays the results.
 */
public class Display {

	public static void main(String[] args) {
		System.loadLibrary("opencv_core.4.0");
		System.loadLibrary("opencv_ml.4.0");
		System.loadLibrary("opencv_imgproc.4.0");
		System.loadLibrary("opencv_photo.4.0");
		System.loadLibrary("opencv_dnn.4.0");
		System.loadLibrary("opencv_flann.4.0");
		System.loadLibrary("opencv_imgcodecs.4.0");
		System.loadLibrary("opencv_videoio.4.0");
		System.loadLibrary("opencv_highgui.4.0");
		System.loadLibrary("opencv_features2d.4.0");
		System.loadLibrary("opencv_calib3d.4.0");
		System.loadLibrary("opencv_objdetect.4.0");
		System.loadLibrary("opencv_video.4.0");
		System.loadLibrary(Core.NATIVE_LIBRARY_NAME);

		Mat shapesImage = Imgcodecs.imread("images/Benthic Shapes.png", Imgcodecs.IMREAD_UNCHANGED);
		Imgproc.resize(shapesImage, shapesImage, new Size(100, 480));
		List<Mat> shapesChannels = new ArrayList<>();
		Core.split(shapesImage, shapesChannels);

		VideoCapture capture = new VideoCapture(0);

		Mat frame = new Mat();

		int shapesCols = shapesImage.cols();
		int shapesRows = shapesImage.rows();
		int[] speciesMax = new int[4];
		while (capture.isOpened()) {
			capture.read(frame);
			Imgproc.resize(frame, frame, new Size(1600, 800));

			int[] species = ShapeIdentifier.identifyShapes(frame);
			for (int i = 0; i < 4; i++) {
				if (species[i] > speciesMax[i]) {
					speciesMax[i] = species[i];
				}

				Imgproc.putText(frame, Integer.toString(speciesMax[i]), new Point(80, 125 * i + 120),
						Imgproc.FONT_HERSHEY_COMPLEX, 5, ShapeIdentifier.RED);
			}

			for (int x = 0; x < shapesCols; x++) {
				for (int y = 0; y < shapesRows; y++) {
					if (shapesChannels.get(3).get(y, x)[0] > 0) {
						frame.put(y + 20, x + 200, 0, 0, 255);
					}
				}
			}
			HighGui.imshow("display", frame);
			HighGui.waitKey(1);
		}
	}
}
