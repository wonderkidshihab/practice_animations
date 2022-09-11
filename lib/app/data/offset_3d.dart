class Offset3D {
   double x;
   double y;
   double z;

   Offset3D(this.x, this.y, this.z);

  @override
  String toString() {
    return 'Offset3D{x: $x, y: $y, z: $z}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Offset3D &&
          runtimeType == other.runtimeType &&
          x == other.x &&
          y == other.y &&
          z == other.z;

  @override
  int get hashCode => x.hashCode ^ y.hashCode ^ z.hashCode;
}