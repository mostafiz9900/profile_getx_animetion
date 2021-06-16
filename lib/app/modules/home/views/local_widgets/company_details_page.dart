import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_getx_animetion/app/data/models/company.dart';
import 'package:profile_getx_animetion/app/modules/global_widgets/company_details_intro_animation.dart';
import 'dart:ui' as ui;

class CompanyDetailsPage extends StatelessWidget{
  CompanyDetailsPage({@required this.companyModel, @required AnimationController? animationController})
  :animation=CompanyDetailsIntroAnimation(animationController!)
  ;
  final CompanyModel? companyModel;
  final CompanyDetailsIntroAnimation animation;
  Widget _createAnimation(){
    return Stack(
      fit: StackFit.expand,
      children: [
        Opacity(opacity: animation.bgdropOpacity.value,
          child: Image.asset(companyModel!.backdropPhoto!,fit: BoxFit.fill,height: Get.height,width: Get.width,),),
        BackdropFilter(filter: ui.ImageFilter.blur(
            sigmaX: animation.bgdropBlur.value,
            sigmaY: animation.bgdropBlur.value
        ),
          child: Container(
            color: Colors.black.withOpacity(0.3),
            child: _createContent(),
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CompanyDetailsView'),
        centerTitle: true,
      ),
      body: AnimatedBuilder(
        animation: animation.controller,
        builder:(context, child) {
         return _createAnimation();
        },),
    );
  }

 Widget _createContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _createLogoAvatar(),
        ],
      ),
    );
 }

 Widget _createLogoAvatar() {
    return Transform(transform: Matrix4.diagonal3Values(animation.avatarSize.value, animation.avatarSize.value,1.0),
    alignment: Alignment.center,
      child: Container(
        width: double.infinity,
        height: 110.0,
        margin: EdgeInsets.only(top: 32.0, left: 19.0),
        padding: EdgeInsets.all(3.0),
        child: Row(
          children:<Widget> [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('MR'),

            ),
            Padding(padding: EdgeInsets.all(8.0),
            child: Text('Build Apps With Mostafizue',style: TextStyle(fontSize: 19 * animation.avatarSize.value + 2.0,
            color: Colors.white70
            ),),
            )
          ],
        ),
      ),
    );
 }
}
