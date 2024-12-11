import 'package:get/get.dart';
import 'package:immam/Pages/HomePage/HomePage.dart';
import 'package:immam/Pages/ProfilePage/ProfilePage.dart';
import 'package:immam/Pages/SplacePage/LoginPage/LoginPage.dart';
import 'package:immam/Pages/SplacePage/SplacePage2/SplacePage2.dart';

import '../Pages/SplacePage/SplacePage.dart';
var pagePath =[
  GetPage(
      name: "/HomePage",
      page: ()=>HomePage(),
    transition: Transition.rightToLeft
  ),
  GetPage(
      name: "/ProfilePage",
      page: ()=>ProfilePage(),
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