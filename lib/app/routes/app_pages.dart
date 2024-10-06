import '../pages/modules/login/views/main_login.dart';
import 'package:get/get.dart';

import '../pages/modules/home/bindings/home_binding.dart';
import '../pages/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAINLOGIN;

  static final routes = [
    GetPage(
        name: _Paths.MAINLOGIN,
        page: () => MainLogin()
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),

  ];
}
