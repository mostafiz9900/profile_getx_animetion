import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController  with SingleGetTickerProviderMixin {
  static HomeController get to => Get.find();
  AnimationController? animationController;
  Animation<double>? animationLogo;
  final duration = const Duration(milliseconds: 1780);
  @override
  void onInit() {
    animationController = AnimationController(duration: duration, vsync: this);
    // animationLogo = Tween<double>(begin: 0, end: 150).animate(animationController!)
    //   ..addListener(() => update());
    animationController?.forward();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
