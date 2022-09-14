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
        title: const Text('Animations', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(),
          Expanded(
            child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
            children: [
              GestureDetector(
                onTap: () => Get.toNamed(Routes.SNAKE_GAME),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(child: Text('Snake Game')),
                ),
              ),
              GestureDetector(
                onTap: () => Get.toNamed(Routes.FIREBALL_ANIMATION),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(child: Text('Stars Animation')),
                ),
              ),
            ],
                  ),
          ),
        ],
      ),
    );
  }
}
