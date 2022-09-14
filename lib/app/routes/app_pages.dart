import 'package:flame/game.dart';
import 'package:get/get.dart';
import 'package:practice_animations/app/modules/SnakeGame/views/snake_game_view.dart';

import '../modules/FireballAnimation/bindings/fireball_animation_binding.dart';
import '../modules/FireballAnimation/views/fireball_animation_view.dart';
import '../modules/SnakeGame/bindings/snake_game_binding.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FIREBALL_ANIMATION,
      page: () => GameWidget(game: FireballAnimation()),
      binding: FireballAnimationBinding(),
    ),
    GetPage(
      name: _Paths.SNAKE_GAME,
      page: () => GameWidget(game: SnakeGame()),
      binding: SnakeGameBinding(),
    ),
  ];
}
