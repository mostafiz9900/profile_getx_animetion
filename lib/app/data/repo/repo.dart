import 'package:profile_getx_animetion/app/data/models/company.dart';

class RepoData{
  static final CompanyModel companyModel =CompanyModel(
    id: '1',
    name: 'Build Apps With Mostafizur',
    about: 'Our goal is to teach you the skills and equip you with the tools to become',
    backdropPhoto: 'assets/mostafiz9900.jpg',
    location: 'Dhaka, Mirpur-2',
    logo: 'assets/location_img.png',
    courses: <Course>[
      Course(
        title: 'The Complete Android & Java Bootcamp',
        thumbnail: 'assets/location_img.png',
        url: 'https://www.udemy.com'
      ),
      Course(
          title: 'The Complete Android & Java Bootcamp',
          thumbnail: 'assets/location_img.png',
          url: 'https://www.udemy.com'
      ),
      Course(
          title: 'The Complete Android & Java Bootcamp',
          thumbnail: 'assets/location_img.png',
          url: 'https://www.udemy.com'
      ), Course(
          title: 'The Complete Android & Java Bootcamp',
          thumbnail: 'assets/location_img.png',
          url: 'https://www.udemy.com'
      ),

    ]

  );
}