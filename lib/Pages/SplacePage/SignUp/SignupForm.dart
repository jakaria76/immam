import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:immam/Controller/AuthController.dart';

import '../../../../Widget/PrimaryButton.dart';
import '../../HomePage/HomePage.dart';
class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController email =TextEditingController();
    TextEditingController password = TextEditingController();
    AuthController authController=Get.put(AuthController());
    return Column(
      children: [
        SizedBox(height: 40,),
        TextField(
          controller: name,
          decoration: InputDecoration(
            fillColor: Theme.of(context).colorScheme.surface,
            filled: true,
            hintText: "Full Name",
            prefixIcon: Icon(Icons.person),
          ),
        ),
        SizedBox(height: 40,),
        TextField(
          controller: email,
          decoration: InputDecoration(
            fillColor: Theme.of(context).colorScheme.surface,
            filled: true,
            hintText: "Email",
            prefixIcon: Icon(Icons.email),
          ),
        ),
        SizedBox(height: 40,),
        TextField(
          controller: password,
          decoration: InputDecoration(
            fillColor: Theme.of(context).colorScheme.surface,
            filled: true,
            hintText: "Password",
            prefixIcon: Icon(Icons.password),
          ),
        ),
        SizedBox(height: 40,),
        Obx(()=>authController.isLoading.value?CircularProgressIndicator()
            :Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Primarybutton(btnName: "SignUp", icon: Icons.lock_open_rounded, onPressed: () {
              // Navigate to HomePage
              authController.creatUser(email.text, password.text);
            },),
          ],
        ),
        )
      ],
    );
  }
}