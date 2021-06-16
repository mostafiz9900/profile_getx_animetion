import 'package:flutter/animation.dart';

class CompanyDetailsIntroAnimation{

  CompanyDetailsIntroAnimation(this.controller)
      :bgdropOpacity=Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.0,0.500,curve: Curves.ease))),
      bgdropBlur=Tween(begin: 0.0,end: 5.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.0,0.800,curve: Curves.ease))),
      avatarSize= Tween(begin:0.0,end: 1.0).animate(CurvedAnimation(parent: controller, curve: Interval(0.100,0.400,curve: Curves.easeInOut)))
  ;

 late final AnimationController controller;
 late final Animation<double> bgdropOpacity;
 late final Animation<double> bgdropBlur;
 late final Animation<double> avatarSize;
 late final Animation<double> nameOpacity;
 late final Animation<double> locationOpacity;
 late final Animation<double> dividerWidth;
 late final Animation<double> aboutOpacity;
 late final Animation<double> courseScrollerXTranslation;
 late final Animation<double> courseScrolllerOpacity;


}