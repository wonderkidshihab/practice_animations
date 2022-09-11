import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_animations/app/modules/CustomAnimations/views/random_fireball_animation.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      home: GameWidget(game: RandomFireballAnimation()),
    ),
  );
}
