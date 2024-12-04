import 'package:flutter/material.dart';
import 'package:immam/Pages/ChatPage/Widget/ChatBubble.dart';
import 'package:immam/pages/HomePage/Widget/ChatList.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10), // Fixed typo here
          child: Image.asset('assets/images/profile pic1.png',height: 70,width: 70,),
        ),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "MD JAKARIA",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              "Online",
              style: Theme.of(context).textTheme.labelSmall,
            ),

          ],

        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call)),

        ],
      ),



      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: Theme.of(context).colorScheme.primaryContainer,

        ),
        child: Row(

          children: [
            Container(child: Image.asset('assets/icons/mic.png',height: 45),height: 45,width: 45,),
            SizedBox(width: 10,),
            Expanded(child: TextField(
               decoration: InputDecoration(
                 hintText: "Type massage....",
                 filled: false,
               ),
            ),
            ),
            SizedBox(width: 10,),
            Container(child: Image.asset('assets/icons/gallery.png',height: 45,width: 45,),height: 45,width: 45,),
            SizedBox(width: 10,),
            Container(child: Image.asset('assets/icons/send.png',height: 45,width: 45,),width: 45,height: 45,),
          ],
        ),
      ),




      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
          ChatBubble(
            message: "Asalamualaykum",
            isComming: true,
            status: "read",
            time: "10:10 PM",
            imageUrl: "",
          ),
            ChatBubble(
              message: "Asalamualaykum",
              isComming: false,
              status: "read",
              time: "10:10 PM",
              imageUrl: "",
            ),
            ChatBubble(
              message: "Asalamualaykum",
              isComming: true,
              status: "read",
              time: "10:10 PM",
              imageUrl: "https://strapi.dhiwise.com/uploads/618fa90c201104b94458e1fb_639c3c682573ede2ef7e67c9_Best_Flutter_app_development_tools_and_app_builders_OG_image_ac87c76436.jpg",
            ),
            ChatBubble(
              message: "olaykumasalam",
              isComming: false,
              status: "read",
              time: "10:10 PM",
              imageUrl: "https://strapi.dhiwise.com/uploads/618fa90c201104b94458e1fb_639c3c682573ede2ef7e67c9_Best_Flutter_app_development_tools_and_app_builders_OG_image_ac87c76436.jpg",
            ),





          ],
        ),

      ),
    );
  }
}
