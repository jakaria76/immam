import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:immam/Model/user_model.dart';

class AuthController extends GetxController {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  RxBool isLoading = false.obs;




  Future<void> login(String email, String password) async {
    isLoading.value = true;
    try {
      await auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );

      Get.offAllNamed("/HomePage");

    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print("user not found that email");
      } else if (e.code == 'wrong-password') {
        print("wrong password for that user");
      }
    } catch (e) {
      print(e);
    }
    isLoading.value = false;
  }

  void creatUser(String name, String email, String password) async {
    try {
      isLoading.value = true;
      // Create user with Firebase
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Optional: Update display name
      await initUser(email,name);
      await auth.currentUser?.updateDisplayName(name);
      // Navigate to HomePage after successful signup
      Get.offAllNamed("/HomePage");
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> logoutUser() async{
    await auth.signOut();
    Get.offAllNamed("/SplacePage");
  }
  Future<void>initUser(String email,String name)async{
    var newUser = UserModel(
      email:email,
      name :name,
    );
    try{
      await db.collection("users").doc(auth.currentUser!.uid).set(
        newUser.toJson(),
      );
    }catch(ex){
      print(ex);
    }
  }
}

//


