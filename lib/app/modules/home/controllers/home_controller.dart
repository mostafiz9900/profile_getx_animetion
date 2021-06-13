import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController  with SingleGetTickerProviderMixin {
  AnimationController? animationController;
  Animation<double>? animationLogo;
  final duration = const Duration(milliseconds: 1000);
  @override
  void onInit() {
    animationController = AnimationController(duration: duration, vsync: this);
    animationLogo = Tween<double>(begin: 0, end: 150).animate(animationController!)
      ..addListener(() => update());
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
