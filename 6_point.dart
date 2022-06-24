import 'dart:math';

const double xOrigin = 0;
const double yOrigin = 0;
const double zOrigin = 0;

const origin = Point.immutable(0, 0, 0);
const unit = Point.immutable(1, 1, 1);

class Point {
  final double x;
  final double y;
  final double z;

  Point(this.x, this.y, this.z);

  const Point.immutable(this.x, this.y, this.z);

  @override
  String toString() {
    return 'Point{x: $x, y: $y, z: $z}';
  }

  factory Point.origin() {
    return origin;
  }

  factory Point.unit() {
    return unit;
  }

  double distanceTo(Point p) {
    return sqrt(
        pow(this.x - p.x, 2) + pow(this.y - p.y, 2) + pow(this.z - p.z, 2));
  }
}
