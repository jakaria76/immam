import 'package:flutter/material.dart';

MyTabBar(TabController _tabController,BuildContext context){
  return PreferredSize(
      preferredSize: Size.fromHeight(60),
      child: TabBar(
        controller: _tabController,
        indicatorWeight: 10,
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(

          borderRadius: BorderRadius.circular(100),
        ),
        labelStyle: Theme.of(context).textTheme.bodyLarge,
        unselectedLabelStyle: Theme.of(context).textTheme.labelLarge,
        tabs: const [
          Tab(text: "Home"),
          Tab(text: "Chats"),
          Tab(text: "Settings"),
        ],
      ),
  );
}