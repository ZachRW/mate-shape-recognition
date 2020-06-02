import org.opencv.core.MatOfPoint2f;
import org.opencv.core.Point;

/**
 * The {@code Species} enum represents possible shapes of a benthic species.
 */
enum Species {
	TRIANGLE,
	SQUARE,
	RECTANGLE,
	CIRCLE
}

/**
 * The {@code Polygon} class represents polygons identified by the program
 * and provides methods to calculate properties of the polygon.
 */
class Polygon {
	private MatOfPoint2f mat;
	private Species species;

	/**
	 * Creates a new {@code Polygon} with a given contour and species.
	 *
	 * @param mat the contour as a mat of points
	 * @param species the benthic species recognised
	 */
	Polygon(MatOfPoint2f mat, Species species) {
		this.mat = mat;
		this.species = species;
	}

	/**
	 * Gets a numerical representation of the species.
	 *
	 * @return benthic species ID
	 */
	int getID() {
		switch (species) {
			case TRIANGLE:
				return 0;
			case SQUARE:
				return 1;
			case RECTANGLE:
				return 2;
			case CIRCLE:
				return 3;
		}
		return -1;
	}

	/**
	 * Gets the center of the polygon
	 *
	 * @return center point
	 */
	Point getCenter() {
		Point[] points = mat.toArray();
		Point center = new Point();
		for (Point point : points) {
			center.x += point.x;
			center.y += point.y;
		}
		center.x /= points.length;
		center.y /= points.length;

		return center;
	}

	boolean isParallelogram() {
		return true;
	}

	/**
	 * Determines whether the polygon reaches a certain threshold of equilateral-ness.
	 *
	 * @param deviation the maximum deviation in side length from the average
	 * @return {@code true} if equilateral enough, {@code false} otherwise
	 */
	boolean isEquilateral(double deviation) {
		Point[] points = mat.toArray();
		double[] sides = new double[points.length];

		for (int i = 0; i < points.length; i++) {
			Point a = points[i];
			Point b;
			if (i == points.length - 1) {
				b = points[0];
			} else {
				b = points[i + 1];
			}

			sides[i] = Math.hypot(a.x - b.x, a.y - b.y);
		}

		double aveSide = 0;
		for (double side : sides) {
			aveSide += side;
		}
		aveSide /= points.length;

		for (double side : sides) {
			if (Math.abs(side - aveSide) > deviation) {
				return false;
			}
		}

		return true;
	}

	/**
	 * Determines whether the polygon reaches a certain threshold of equiangular-ness.
	 * The polygon's angles must not deviate more than pi/8 radians from the average.
	 *
	 * @return {@code true} if equiangular enough, {@code false} otherwise
	 */
	boolean isEquiangular() {
		Point[] points = mat.toArray();
		double[] angles = new double[points.length];
		for (int i = 0; i < points.length; i++) {
			Point a = points[i];
			Point b;
			if (i == points.length - 1) {
				b = points[0];
			} else {
				b = points[i + 1];
			}
			Point c;
			if (i > points.length - 3) {
				c = points[i - points.length + 2];
			} else {
				c = points[i + 2];
			}

			double ab = Math.hypot(a.x - b.x, a.y - b.y);
			double bc = Math.hypot(b.x - c.x, b.y - c.y);
			double ac = Math.hypot(a.x - c.x, a.y - c.y);
			angles[i] = Math.acos((Math.pow(bc, 2) + Math.pow(ab, 2) - Math.pow(ac, 2))
					/ (2 * bc * ab));
		}

		double aveAngle = 0;
		for (double angle : angles) {
			aveAngle += angle;
		}
		aveAngle /= points.length;

		for (double angle : angles) {
			if (Math.abs(angle - aveAngle) > Math.PI / 8) {
				return false;
			}
		}

		return true;
	}
}
