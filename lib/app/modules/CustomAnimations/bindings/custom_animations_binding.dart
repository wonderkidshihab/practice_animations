import 'package:get/get.dart';

import '../controllers/custom_animations_controller.dart';

class CustomAnimationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomAnimationsController>(
      () => CustomAnimationsController(),
    );
  }
}
