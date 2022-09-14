import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_animations/app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Animations",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
