import 'package:get/get.dart';

import 'package:profile_getx_animetion/app/modules/company_details/bindings/company_details_binding.dart';
import 'package:profile_getx_animetion/app/modules/company_details/views/company_details_view.dart';
import 'package:profile_getx_animetion/app/modules/home/bindings/home_binding.dart';
import 'package:profile_getx_animetion/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.COMPANY_DETAILS,
      page: () => CompanyDetailsView(),
      binding: CompanyDetailsBinding(),
    ),
  ];
}
