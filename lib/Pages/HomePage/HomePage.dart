import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:immam/Pages/HomePage/Widget/ChatList.dart';
import 'package:immam/Pages/ProfilePage/ProfilePage.dart';

import 'Widget/TabBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Initialize TabController with 3 tabs
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the TabController to avoid memory leaks
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text(
          "BD Immam",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
            icon: Icon(Icons.more_vert),
          ),
        ],bottom: MyTabBar(_tabController,context),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(Icons.add,color: Theme.of(context).colorScheme.onSurface,),


      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: TabBarView(
          controller: _tabController,
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
