

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SplaceController extends GetxController{
  final auth = FirebaseAuth.instance;

  void onInt(){
    super.onInit();
    splaceHandle();
  }


  void splaceHandle() async {
    await Future.delayed(Duration(seconds: 3),
    );
    if(auth.currentUser==null){
      Get.offAllNamed("/authPage");
    }else{
      Get.offAllNamed("/HomePage");
    }
    print("hello");
  }


}