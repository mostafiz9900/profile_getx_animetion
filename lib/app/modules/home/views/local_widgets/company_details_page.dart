import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_getx_animetion/app/data/models/company.dart';
import 'dart:ui' as ui;
import 'package:profile_getx_animetion/app/global_widgets/company_details_intro_animation.dart';
import 'package:profile_getx_animetion/app/modules/home/views/local_widgets/course_card.dart';

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
          _createAboutCompany(),
          _createCourseScroller(),
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
        margin: EdgeInsets.only(top: 0.0, left: 19.0),
        padding: EdgeInsets.all(3.0),
        child: Row(
          children:<Widget> [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('MR'),
            ),
            Expanded(
              child: Padding(padding: EdgeInsets.all(8.0),
              child: Text('Build Apps With Mostafizu Rahman',style: TextStyle(fontSize: 19 * animation.avatarSize.value + 2.0,
              color: Colors.white70
              ),),
              ),
            )
          ],
        ),
      ),
    );
 }
 Widget _createAboutCompany(){
    return Padding(padding: EdgeInsets.only(top: 14.0,left: 14.0,right: 14.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(companyModel!.name!,style:TextStyle(
          color: Colors.white.withOpacity(animation.nameOpacity.value),
          fontSize: 30.0 * animation.avatarSize.value + 2.0,
          fontWeight: FontWeight.bold
        ) ,),
        Text(companyModel!.location!,style: TextStyle(
          color: Colors.white.withOpacity(animation.locationOpacity.value),
          fontWeight: FontWeight.w400
        )),

      Row(
        children: [
          Container(
              color: Colors.white.withOpacity(0.78),
            margin: const EdgeInsets.symmetric(vertical: 14.0),
            width: animation.dividerWidth.value,
            height: 1.0,
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0,vertical: 2.0),
            child: Text('Ok',style: TextStyle(
              color:Colors.white.withOpacity(0.78),
            ),),
          ),
          Container(
            color: Colors.white.withOpacity(0.78),
            margin: const EdgeInsets.symmetric(vertical: 14.0),
            width: animation.dividerWidth.value,
            height: 1.0,
          ),
        ],
      ),
        Text(companyModel!.about!,
        style: TextStyle(color: Colors.white.withOpacity(animation.aboutOpacity.value),
        height: 1.4),),
      ],
    ),
    );
 }
 Widget _createCourseScroller(){
    return Padding(padding: EdgeInsets.only(top: 14.0),
    child: Transform(transform: Matrix4.translationValues(animation.courseScrollerXTranslation.value, 0.0, 0.0),
    child: SizedBox.fromSize(
      size: Size.fromHeight(250.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 7.0),
        itemCount: companyModel!.courses!.length,
        itemBuilder: (context, index) {
          var course =companyModel!.courses![index];
        return CourseCard(course: course,) ;
      },),

    ),
    ),
    );
 }
}
