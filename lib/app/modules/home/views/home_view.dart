import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_animations/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.CUSTOM_ANIMATIONS);
              },
              child: const Text('Check out the animations'),
            ),
          ],
        ),
      ),
    );
  }
}
