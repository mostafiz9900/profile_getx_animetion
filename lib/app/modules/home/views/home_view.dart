import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:profile_getx_animetion/app/data/repo/repo.dart';
import 'package:profile_getx_animetion/app/modules/home/views/local_widgets/company_details_page.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return CompanyDetailsPage(companyModel: RepoData.companyModel, animationController:controller.animationController) /*Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: GetBuilder<HomeController>(
            builder: (_) {
              return Column(
               crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   height: 200,
                  //   child: Container(
                  //     height: _.animationLogo!.value,
                  //     width: _.animationLogo!.value,
                  //     child: FlutterLogo(),
                  //   ),
                  // ),
                  SizedBox( height:Get.height,child: CompanyDetailsPage(companyModel: RepoData.companyModel, animationController: _.animationController))
                ],
              );
            },
          ),
        ),
      ),
    )*/;
  }
}
