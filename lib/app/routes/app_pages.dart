import 'package:get/get.dart';

import '../modules/CustomAnimations/bindings/custom_animations_binding.dart';
import '../modules/CustomAnimations/views/random_fireball_animation.dart';
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
    // GetPage(
    //   name: _Paths.CUSTOM_ANIMATIONS,
    //   page: () => CustomAnimationsView(),
    //   binding: CustomAnimationsBinding(),
    // ),
  ];
}
