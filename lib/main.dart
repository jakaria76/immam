import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:immam/Config/PagePath.dart';
import 'package:immam/Config/Themes.dart';
import 'package:immam/Pages/HomePage/HomePage.dart';
import 'package:immam/Pages/SplacePage/SplacePage.dart';
import 'package:immam/firebase_options.dart';

import 'Pages/SplacePage/LoginPage/LoginPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BD Immam',
      theme: lightTheme,
      getPages:pagePath,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home: const Splacepage(),
    );
  }
}

class MyHomePage {
  const MyHomePage();
}

