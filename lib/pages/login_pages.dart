import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';
import 'package:hilmanelfarabi_13/components/login_page/custom_button.dart';
import 'package:hilmanelfarabi_13/components/login_page/custom_textfield.dart';
import 'package:hilmanelfarabi_13/controllers/login_ctr.dart';

class LoginPages extends StatelessWidget {
  LoginPages({super.key});

  final controller = Get.put(LoginCtr());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 25,),
          Text(
            'LOGIN',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Color.fromARGB(255, 9, 160, 41),
              fontSize: 16
            ),
          ),

          CustomTextfield(txtController: controller.txtUsername, myHint: 'Username'),
          const SizedBox(height: 10,),
          CustomTextfield(txtController: controller.txtPassword, myHint: 'Password', obscureText: true,),

          Obx(
            () => controller.isLoading.value
                ? Center(child: CircularProgressIndicator())
                : CustomButton(
                    label: 'Login',
                    onPressedButton: () {
                      debugPrint("Tombol LoginFormBtn berhasil ditekan!");
                      controller.login();
                    },
                  ),
          ),
        ],
        
        
      ),
    );
  }
}
