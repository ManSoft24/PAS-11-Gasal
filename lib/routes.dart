import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';
import 'package:hilmanelfarabi_13/pages/detail_pembayaran.dart';
import 'package:hilmanelfarabi_13/pages/login_pages.dart';
import 'package:hilmanelfarabi_13/pages/main_menu_pages.dart';


class Routes {
  static const String login_pages = "/login_pages";
  static const String main_menu = "/main_menu";
  static const String detail_pembayaran = "/detail_pembayaran";

  static final pages = [
    GetPage(name: login_pages, page: () => LoginPages()),
    GetPage(name: main_menu, page: () => MainMenuPages()),
    GetPage(name: detail_pembayaran, page: () => DetailMakananPage()),
  ];
}
