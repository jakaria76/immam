import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginUserInfo extends StatelessWidget {
  const LoginUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Row(
          children: [
            Expanded(
                child:Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/profile pic1.png',height: 80,width: 80,)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("jakaria",style: Theme.of(context).textTheme.bodyLarge,),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("jakaria@gmail.com",style: Theme.of(context).textTheme.labelLarge ,),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        Container(
                          height:50,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).colorScheme.surface,
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.phone),
                              SizedBox(width: 10,),
                              Text("Phone"),
                            ],
                          ),
                        ),

                        Container(
                          height:50,                                padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).colorScheme.surface,
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.video_call),
                              SizedBox(width: 10,),
                              Text("video",style: TextStyle(color: Color(0xffFF9900)),),
                            ],
                          ),
                        ),

                        Container(
                          height:50,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).colorScheme.surface,
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.chat),
                              SizedBox(width: 10,),
                              Text("chat"),
                            ],
                          ),
                        )
                      ],
                    )

                  ],
                )
            )
          ],
        )
    );
  }
}
