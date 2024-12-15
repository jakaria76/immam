import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:immam/Controller/ImagePicker.dart';
import 'package:immam/Controller/ProfileController.dart';
import 'package:immam/Pages/HomePage/Widget/ChatList.dart';

import '../ProfilePage/ProfilePage.dart';
import '../UserProfilePage/ProfilePage.dart';
import 'Widget/TabBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController=TabController(length: 3, vsync: this);
    ImagePickerController imagePickerController =Get.put(ImagePickerController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text(
          "BD Immam",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          IconButton(
            onPressed: () {
              imagePickerController.pickImage();
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Get.to(ProfilePage());
            },
            icon: Icon(Icons.more_vert),
          ),
        ],bottom: MyTabBar(tabController,context),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(Icons.add,color: Theme.of(context).colorScheme.onSurface,),


      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: TabBarView(
          controller: tabController,
            children: [
              ListView(
                children: [
                  ListTile(
                    title: Text("Home PAGE"),
                  )
                ],
              ),
              ChatList(),
              ListView(
                children: [
                  ListTile(
                    title: Text("Setting Page"),
                  )
                ],
              ),
            ]
        ),
      ),

    );
  }
}
