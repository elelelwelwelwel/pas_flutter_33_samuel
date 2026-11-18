import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pas_flutter_33_samuel/menu/feat_page.dart';
import 'package:pas_flutter_33_samuel/menu/home_page.dart';
import 'package:pas_flutter_33_samuel/menu/profile_page.dart';

class MenuDrawerController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final List<Widget> listPages = [HomePage(), FeatPage(), ProfilePage()];

  final List<String> pageTitles = ['Home', 'History', 'Profile'];

  String get currentTitle => pageTitles[selectedIndex.value];

  void changePage(int index) {
    selectedIndex.value = index;
    Get.back();
  }
}
