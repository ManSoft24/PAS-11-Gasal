import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hilmanelfarabi_13/routes.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PAS Mobile",
      initialRoute: Routes.main_menu,
      getPages: Routes.pages,
    );
  }
}
