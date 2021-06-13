import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: GetBuilder<HomeController>(
            builder: (_) {
              print(_.animationLogo!.value);
              print('_.animationLogo.value');
              return Column(
               crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                    child: Container(
                      height: _.animationLogo!.value,
                      width: _.animationLogo!.value,
                      child: FlutterLogo(),
                    ),
                  ),
                                 ],
              );
            },
          ),
        ),
      ),
    );
  }
}
