import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_flutter_33_samuel/component/custom_textfield.dart';
import 'package:pas_flutter_33_samuel/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());
        
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/instalogo.webp', height: 80),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(10),
              child: CustomTextField(
                txtController: controller.txtUsername,
                myHint: "input username",
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: CustomTextField(
                txtController: controller.txtPassword,
                myHint: "input password",
              ),
            ),

            Obx(
              () => controller.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : OutlinedButton(
                      onPressed: () {
                        controller.login();
                      },
                      child: Text("Login"),
                    ),
            ),
          ],
        ),
      ),
    );
  }
} 