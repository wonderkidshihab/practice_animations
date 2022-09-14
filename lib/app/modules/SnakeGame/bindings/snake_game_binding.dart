import 'package:get/get.dart';

import '../controllers/snake_game_controller.dart';

class SnakeGameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SnakeGameController>(
      () => SnakeGameController(),
    );
  }
}
