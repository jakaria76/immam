import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:immam/Controller/AuthController.dart';


import '../../Controller/ProfileController.dart';
import 'Widget/UpdateProfile.dart';
import 'Widget/userInfo.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController=Get.put(AuthController());

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          IconButton(
            icon: Icon(Icons.edit), // The edit icon
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserUpdateProfile()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            LoginUserInfo(),
            Spacer(),
            ElevatedButton(onPressed: (){
              authController.logoutUser();
            }, child: Text("LogOut"))
          ],
        ),
      ),
    );
  }
}

