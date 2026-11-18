import 'package:get/get.dart';
import 'package:pas_flutter_33_samuel/pages/detailmakanan_pages.dart';
import 'package:pas_flutter_33_samuel/pages/login_page.dart';
import 'package:pas_flutter_33_samuel/pages/menu_drawer_page.dart';

class Routes {
  static const String login = "/login";
  static const String menu_drawer = "/menu_drawer";
  static const String detail_makanan = "/detail_makanan";

  static final myPages = [
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: menu_drawer, page: () => MenuDrawerPage()),
    GetPage(name: detail_makanan, page: () => DetailMakananPage())
  ];
}
