import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:immam/Model/user_model.dart';

class ProfileController extends GetxController{
  final auth = FirebaseAuth.instance;
  final db=FirebaseFirestore.instance;

  Rx<UserModel>currentUser=UserModel().obs;
@override
  void onInit() async{
    super.onInit();
    await getUserDetails();
  }

  Future<void>getUserDetails() async{
    await db.collection("Users").doc(auth.currentUser!.uid).get().then(
          (value)=>{
        currentUser.value=UserModel.fromJson(
          value.data()!,
        ),
      },
    );
  }
}


//