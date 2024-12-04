import 'package:flutter/material.dart';
import 'package:immam/Pages/HomePage/Widget/ChatTile.dart';
import '../../ChatPage/ChartPage.dart';



class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChatPage()),
            );
          },
          child: ChatTile(
            imageUrl: Image.asset(
              "assets/images/profile pic1.png",
              height: 70,
              width: 70,
            ),
            name: "MD JAKARIA",
            lastChat: "asalamualaykum",
            lastTime: "09:30",
          ),
        ),
        ChatTile(
          imageUrl: Image.asset(
            "assets/images/profile pic2.png",
            height: 70,
            width: 70,
          ),
          name: "ISLAMIC STUDIO",
          lastChat: "asalamualaykum",
          lastTime: "09:30",
        ),
        ChatTile(
          imageUrl: Image.asset(
            "assets/images/profile pic1.png",
            height: 70,
            width: 70,
          ),
          name: "MD JAKARIA",
          lastChat: "asalamualaykum",
          lastTime: "09:30",
        ),
        ChatTile(
          imageUrl: Image.asset(
            "assets/images/profile pic2.png",
            height: 70,
            width: 70,
          ),
          name: "ISLAMIC STUDIO",
          lastChat: "asalamualaykum",
          lastTime: "09:30",
        ),
      ],
    );
  }
}

//
