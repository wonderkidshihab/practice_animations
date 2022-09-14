import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const double BLOCKSIZE = 5;
late Vector2 windowSize;

double xspeed = 1;
double yspeed = 0;

class SnakeGame extends FlameGame with KeyboardEvents {
  late Snake snake;
  late Food food;

  @override
  Future<void>? onLoad() {
    windowSize = size;
    snake = Snake();
    food = Food();
    add(snake);
    add(food);

    return null;
  }

  @override
  void onGameResize(Vector2 canvasSize) {}

  @override
  void update(double dt) {
    super.update(dt);
    snake.update(dt);

    if (snake.collides(food)) {
      snake.addBlock();
      food.newPosition();
    }
  }

  @override
  KeyEventResult onKeyEvent(
    RawKeyEvent event,
    Set<LogicalKeyboardKey> keysPressed,
  ) {
    final isKeyDown = event is RawKeyDownEvent;
    if (keysPressed.contains(LogicalKeyboardKey.arrowUp) && isKeyDown) {
      xspeed = 0;
      yspeed = -1;
    } else if (keysPressed.contains(LogicalKeyboardKey.arrowDown) &&
        isKeyDown) {
      xspeed = 0;
      yspeed = 1;
    } else if (keysPressed.contains(LogicalKeyboardKey.arrowLeft) &&
        isKeyDown) {
      xspeed = -1;
      yspeed = 0;
    } else if (keysPressed.contains(LogicalKeyboardKey.arrowRight) &&
        isKeyDown) {
      xspeed = 1;
      yspeed = 0;
    }
    return KeyEventResult.ignored;
  }
}

class Food extends PositionComponent {
  Food() {
    size = Vector2.all(BLOCKSIZE);
    position = Vector2(
      windowSize.x / 2,
      windowSize.y / 2,
    );
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    final paint = Paint()..color = Colors.red;
    canvas.drawRect(toRect(), paint);
  }

  void newPosition() {
    position = Vector2(
      windowSize.x / 2,
      windowSize.y / 2,
    );
  }
}

class Snake extends ShapeComponent {
  var frameCount = 1;
  @override
  void update(double dt) {
    super.update(dt);
    if (frameCount % 5 == 0) {
      x += xspeed * BLOCKSIZE;
      y += yspeed * BLOCKSIZE;
      x = x.clamp(0, windowSize.x - BLOCKSIZE);
      y = y.clamp(0, windowSize.y - BLOCKSIZE);
      frameCount = 1;
    } else {
      frameCount++;
    }
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    canvas.drawRect(
      Rect.fromLTWH(x, y, 10, 10),
      Paint()..color = const Color(0xFF00FF00),
    );
  }

  bool collides(Food food) {
    return x == food.x && y == food.y;
  }

  void addBlock() {
    // TODO: add block to snake
  }
}
