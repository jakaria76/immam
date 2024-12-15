import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:immam/Controller/AuthController.dart';

import '../../../../Controller/ProfileController.dart';
import '../../../../Widget/PrimaryButton.dart';
import '../../../HomePage/HomePage.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    AuthController authController=Get.put(AuthController());


    return Column(
      children: [
        const SizedBox(height: 40),
        TextField(
          controller: email,
          decoration: InputDecoration(
            fillColor: Theme.of(context).colorScheme.surface,
            filled: true,
            hintText: "Email",
            prefixIcon: const Icon(Icons.email),
          ),
        ),
        const SizedBox(height: 40),
        TextField(
          controller: password,
          decoration: InputDecoration(
            fillColor: Theme.of(context).colorScheme.surface,
            filled: true,
            hintText: "Password",
            prefixIcon: const Icon(Icons.password),
          ),
        ),
        const SizedBox(height: 40),
        Obx(()=>authController.isLoading.value?CircularProgressIndicator()
            :Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Primarybutton(
              btnName: "Login",
              icon: Icons.lock_open,
              ontap: (){
              authController.login(
                  email.text,
                  password.text
              );
            },)

          ],
        ),),
      ],
    );
  }
}

//