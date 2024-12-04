import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:immam/Pages/HomePage/HomePage.dart';
import 'package:immam/Pages/SplacePage/LoginPage/LoginPage.dart';

class AuthController extends GetxController {
  final FirebaseAuth auth = FirebaseAuth.instance;
  RxBool isLoading = false.obs;

  Future<void> login(String email, String password) async {
    isLoading.value = true;
    try {
      await auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );

      // Navigate to HomePage after successful login
      Get.offAllNamed("HomePage");
      // Use Get.off() for navigation instead of Navigator.pushReplacement
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar('Login Error', 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        Get.snackbar('Login Error', 'Wrong password provided for that user.');
      } else {
        Get.snackbar('Error', e.message ?? 'An unknown error occurred.');
      }
    } catch (e) {
      Get.snackbar('Error', 'An unexpected error occurred.');
    }
    isLoading.value = false;
  }

  Future<void> creatUser(String email, String password) async {
    isLoading.value = true;
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
      Get.snackbar('Success', 'Account created successfully!');

      // Navigate to HomePage after account creation (optional)
      Get.off(() => HomePage()); // Use Get.off() for navigation
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.snackbar('Signup Error', 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Get.snackbar('Signup Error', 'The account already exists for that email.');
      } else {
        Get.snackbar('Error', e.message ?? 'An unknown error occurred.');
      }
    } catch (e) {
      Get.snackbar('Error', 'An unexpected error occurred.');
    }
    isLoading.value = false;
  }
}

//
