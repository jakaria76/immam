

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:immam/Widget/PrimaryButton.dart';

class UserUpdateProfile extends StatelessWidget {
  const UserUpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upadate Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              child: Row(
                children: [
                  Expanded(child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Theme.of(context).colorScheme.surface,
                        ),
                        width: 200,height: 200,
                        child: Center(child: Icon(Icons.add_photo_alternate_outlined,size: 80,),),

                      ),
                      Row(
                        children: [
                          Text("Personal Info",style: Theme.of(context).textTheme.labelMedium,)
                        ],
                      ),
                      SizedBox(height:30),

                      Row(
                        children: [
                          Text("Name",style: Theme.of(context).textTheme.labelLarge,)
                        ],
                      ),
                      SizedBox(height:10),
                      TextField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Enter Your Name",
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      SizedBox(height:30),

                      Row(
                        children: [
                          Text("Email Id",style: Theme.of(context).textTheme.labelLarge,)
                        ],
                      ),
                      SizedBox(height:10),
                      TextField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Enter Your Email",
                          prefixIcon: Icon(Icons.attach_email),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text("Phone Number",style: Theme.of(context).textTheme.labelLarge,)
                        ],
                      ),
                      SizedBox(height:10),
                      TextField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Enter Your Number",
                          prefixIcon: Icon(Icons.call),
                        ),
                      ),
                      SizedBox(height:20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Primarybutton(btnName: "Save", icon: Icons.save,
                              ontap: () { },
                              ),
                        ],
                      ),


                    ],
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
