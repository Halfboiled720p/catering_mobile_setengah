
import 'package:catering_mobile/app/pages/modules/home_admin/views/home_admin.dart';
import 'package:catering_mobile/app/pages/modules/home_kurir/views/home_kurir.dart';

import '../pages/modules/login/views/kurir_login.dart';
import '../pages/modules/login/views/main_login.dart';
import 'package:get/get.dart';

import '../pages/modules/home/bindings/home_binding.dart';
import '../pages/modules/home/views/home_view.dart';
import '../pages/modules/register/views/register.dart';
import '../pages/modules/menu_favorit/Views/menu_favorit.dart';
import '../pages/modules/search_menu/views/SearchMenu.dart';
import '../pages/modules/menu_pilihan/bindings/menupilihan_binding.dart';
import '../pages/modules/menu_pilihan/views/menupilihan_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAINLOGIN;

  static final routes = [
    GetPage(
      name: _Paths.REGISTER,
      page: () => Register(),
    ),
    GetPage(
        name: _Paths.MAINLOGIN,
        page: () => MainLogin()
    ),
    GetPage(
        name: _Paths.KURIRLOGIN,
        page: () => KurirLogin()
    ),
    GetPage(
      name: _Paths.HOMEADMIN,
      page: () => HomeAdmin(),
    ),
    GetPage(
      name: _Paths.HOMEKURIR,
      page: () => HomeKurir(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
        name: _Paths.MENUFAVORIT,
        page: () => menu_favorit(),
    ),
    GetPage(
        name: _Paths.SEARCHMENU,
        page: () => SearchMenu(),
    ),
    GetPage(
        name: _Paths.MENUPILIHAN,
        page: () => menupilihan_view(title: 'Menu Pilihan',),
        binding: menupilihan_binding(),
    )
  ];
}
