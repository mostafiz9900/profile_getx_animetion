

import 'package:flutter/cupertino.dart';

class CompanyModel {
 final String? id;
 final String? name;
 final String? location;
 final String? logo;
 final String? backdropPhoto;
 final String? about;
 final List<Course>? courses;

  CompanyModel({
   @required this.id,
   @required this.name,
   @required this.location,
   @required this.logo,
   @required this.backdropPhoto,
   @required this.about,
   @required this.courses,
  });

  // CompanyModel.fromJson(Map<String, dynamic> json){
  //     id = json['id'];
  //     name = json['name'];
  //     location = json['location'];
  //     logo = json['logo'];
  //     about = json['about'];
  //     courses = json['courses'];
  // }

  Map<String, dynamic> toJson() => {'id':id, 'name':name };
}

class Course {
  final String? title;
  final String? thumbnail;
  final String? url;
  Course({
    this.title,
    this.thumbnail,
    this.url,
  });

}