import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:hilmanelfarabi_13/menus/feat.dart';
import 'package:hilmanelfarabi_13/menus/home.dart';
import 'package:hilmanelfarabi_13/menus/profile.dart';

class MainMenuCtr extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void ChangePage(int index) {
    selectedIndex.value = index;
  }

  List<String> ListTitle = [''];

  List<Widget> ListPage = [Home(), Feat(), Profile()];
}
