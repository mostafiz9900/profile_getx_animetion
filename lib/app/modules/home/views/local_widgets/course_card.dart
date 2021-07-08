import 'package:flutter/material.dart';
import 'package:profile_getx_animetion/app/data/models/company.dart';
import 'package:url_launcher/url_launcher.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({Key? key,this.course}) : super(key: key);
final Course? course;

BoxDecoration _createShadoRoundCorners(){
  return BoxDecoration(
    color: Colors.white.withOpacity(0.4),
    borderRadius: BorderRadius.circular(12.0),
    boxShadow: <BoxShadow>[
      BoxShadow(color: Colors.black26,spreadRadius:2.0 ,blurRadius: 10.0),

    ]
  );
}
Widget _createThumbnail(){
  return ClipRRect(
    borderRadius: BorderRadius.circular(8.0),
    child: Stack(
      children: <Widget>[
        Image.asset(course!.thumbnail!),
        Positioned(
            bottom: 12.0,
            right: 12.0,
            child: _createLinkButton())
      ],
    ),
  );
}
  Widget _createLinkButton() {
    return Material(
      color: Colors.white24,
      type: MaterialType.button,
      child: IconButton(
        onPressed: ()async {
              if(await canLaunch(course!.url!)){
                await launch(course!.url!);
              }
        },
        icon: Icon(Icons.link),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175.0,
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(horizontal: 12.0,vertical: 15.0),
      decoration: _createShadoRoundCorners(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(flex: 3,
          child: _createThumbnail(),),
          Flexible(
              flex: 2,
              child: createCourseInfo())
        ],
      ),
    );
  }

Widget createCourseInfo() {
  return Padding(
      padding: EdgeInsets.only(top: 16.0,left: 4.0,right: 4.0),
  child: Text(course!.title!,style: TextStyle(
    color: Colors.white.withOpacity(0.85),

  ),),
  );
}


}
