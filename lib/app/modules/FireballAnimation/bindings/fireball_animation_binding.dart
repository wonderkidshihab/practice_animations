import 'package:get/get.dart';

import '../controllers/fireball_animation_controller.dart';

class FireballAnimationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FireballAnimationController>(
      () => FireballAnimationController(),
    );
  }
}
