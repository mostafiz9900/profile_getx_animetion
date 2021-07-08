import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:profile_getx_animetion/app/data/models/company.dart';
import 'package:profile_getx_animetion/app/global_widgets/company_details_intro_animation.dart';

import '../controllers/company_details_controller.dart';

class CompanyDetailsView extends StatelessWidget{
  CompanyDetailsView({@required this.companyModel, @required AnimationController? animationController})
  :animation=CompanyDetailsIntroAnimation(animationController!)
  ;
  final CompanyModel? companyModel;
  final CompanyDetailsIntroAnimation animation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CompanyDetailsView'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
         Opacity(opacity: animation.bgdropOpacity.value,
         child: Image.asset(companyModel!.backdropPhoto!,fit: BoxFit.cover,),)
        ],
      ),
    );
  }
}
