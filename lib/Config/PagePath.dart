import 'package:get/get.dart';
import 'package:immam/Pages/HomePage/HomePage.dart';

import 'package:immam/Pages/SplacePage/LoginPage/LoginPage.dart';
import 'package:immam/Pages/SplacePage/SplacePage2/SplacePage2.dart';

import '../Pages/SplacePage/SplacePage.dart';
import '../Pages/UserProfilePage/ProfilePage.dart';
var pagePath =[
  GetPage(
      name: "/HomePage",
      page: ()=>HomePage(),
    transition: Transition.rightToLeft
  ),
  GetPage(
      name: "/UserProfilePage",
      page: ()=>UserProfilePage(),
      transition: Transition.rightToLeft
  ),
  GetPage(
      name: "/SplacePage2",
      page: ()=>Splacepage2(),
      transition: Transition.rightToLeft
  ),
  GetPage(
      name: "/Login",
      page: ()=>Loginpage(),
      transition: Transition.rightToLeft
  ),
  GetPage(
      name: "/SplacePage",
      page: ()=>Splacepage(),
      transition: Transition.rightToLeft
  ),


];