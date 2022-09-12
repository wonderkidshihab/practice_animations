import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:practice_animations/app/Utils/helper_funnctions.dart';
import 'package:practice_animations/app/data/offset_3d.dart';

late double HEIGHT;
late double WIDTH;

class RandomFireballAnimation extends FlameGame {
  int shapeCount = 600;
  @override
  Future<void>? onLoad() {
    HEIGHT = size.y;
    WIDTH = size.x;
    for (var v = 1; v <= shapeCount; v++) {
      add(AnimatedShape());
    }
    return null;
  }
}

class AnimatedShape extends ShapeComponent {
  final double _angle = Random().nextDouble() * 2 * pi;
  double speed = 0.0;
  final double _size = 0.0;
  late Offset3D _position;
  AnimatedShape()
      : super(
          position: Vector2(0.0, 0.0),
          paint: Paint()..color = Colors.red,
        );

  @override
  Future<void>? onLoad() {
    // speed = 0.1;
    // _size = 100;
    _position = Offset3D(
      Random().nextInt(WIDTH.toInt()).toDouble(),
      Random().nextInt(HEIGHT.toInt()).toDouble(),
      mapBetween(Random().nextInt(10).toDouble(), 1, 2, 0, 10),
    );
    return null;
  }

  @override
  void render(Canvas canvas) {
    var paint = Paint()..color = Colors.white;
    paint.style = PaintingStyle.fill;
    var paint2 = Paint()..color = Colors.white;
    paint2.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(_position.x, _position.y), _position.z, paint);
    canvas.drawCircle(
        Offset(_position.x, _position.y), _position.z / 10, paint2);
    canvas.save();
    super.render(canvas);
  }

  // update method for starfield animation
  @override
  void update(double dt) {
    _position.x += _position.z * 2 * cos(_angle) * dt;
    _position.y += _position.z * 2 * sin(_angle) * dt;
    if (_position.x > WIDTH || _position.x < 0) {
      _position.x = Random().nextInt(WIDTH.toInt()).toDouble();
    }
    if (_position.y > HEIGHT || _position.y < 0) {
      _position.y = Random().nextInt(HEIGHT.toInt()).toDouble();
    }
    super.update(dt);
    // size = Vector2.all(_size);
    // position = Vector2(_position.x, _position.y);
    // super.update(dt);
  }
}
