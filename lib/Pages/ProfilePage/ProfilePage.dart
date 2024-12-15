import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:immam/Controller/ProfileController.dart';
import 'package:immam/Widget/PrimaryButton.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isEdit = false.obs;
    ProfileController profileController = Get.put(ProfileController());
    TextEditingController name =TextEditingController(text: profileController.currentUser.value.name);
    TextEditingController email =TextEditingController(text: profileController.currentUser.value.email);
    TextEditingController phone =TextEditingController(text: profileController.currentUser.value.phoneNumber);
    TextEditingController about =TextEditingController(text: profileController.currentUser.value.about);
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),


              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              child: Row(

                children: [
                  Expanded(
                    child: Column(

                      children: [
                        SizedBox(height: 20,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             CircleAvatar(
                               backgroundColor:Theme.of(context).colorScheme.surface,

                               child: Icon(Icons.image),
                               radius: 80,
                             ),
                           ],
                         ),
                        SizedBox(height: 10,),
                        Obx(
                            ()=>TextField(
                              controller: name,
                              enabled: isEdit.value,
                              decoration: InputDecoration(
                                filled: isEdit.value,
                                labelText: "Name",
                                prefixIcon: Icon(Icons.person),
                              ),
                            ),
                        ),
                        SizedBox(height: 10,),
                        //
                        Obx(
                            ()=>TextField(
                              controller: about,
                              enabled: isEdit.value,
                              decoration: InputDecoration(
                                filled: isEdit.value,
                                labelText: "About",
                                prefixIcon: Icon(Icons.info),
                              ),
                            ),
                        ),
                        TextField(
                          controller: email,
                          enabled: false,
                          decoration: InputDecoration(
                            filled: isEdit.value,
                            labelText: "Email",
                            prefixIcon: Icon(Icons.email),
                          ),
                        ),
                        Obx(
                            ()=>TextField(
                              controller: phone,
                              enabled: isEdit.value,
                              decoration: InputDecoration(
                                filled: isEdit.value,
                                labelText: "Phone",
                                prefixIcon: Icon(Icons.phone),
                              ),
                            ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(
                                ()=>isEdit.value
                                    ? Primarybutton(btnName: "Save", icon: Icons.save,
                                    ontap: (){
                                      isEdit.value=false;
                                    }
                                )
                                    :Primarybutton(btnName: "Edit", icon: Icons.edit,
                                    ontap: (){
                                      isEdit.value=true;
                                    }
                                ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
