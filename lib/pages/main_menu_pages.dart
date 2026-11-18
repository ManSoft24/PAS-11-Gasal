import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hilmanelfarabi_13/controllers/main_menu_ctr.dart';

class MainMenuPages extends StatelessWidget {
  MainMenuPages({super.key});

  final controller = Get.put(MainMenuCtr());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Menu')),
      body: Obx(
          () => Scaffold(
            body: IndexedStack(
              index: controller.selectedIndex.value,
              children: controller.ListPage,
            ),
            bottomNavigationBar: BottomNavigationBar(
              onTap: controller.ChangePage,
              currentIndex: controller.selectedIndex.value,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                  icon: Icon(Icons.history),
                  label: "History",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile",
                ),
              ],
            ),
          ),
        ),
    );
  }
}
