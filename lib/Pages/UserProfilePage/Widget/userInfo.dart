import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:immam/Controller/ProfileController.dart';

class LoginUserInfo extends StatelessWidget {
  const LoginUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController profileController = Get.put(ProfileController());

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/profile pic1.png',
                height: 80,
                width: 80,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                    () => Text(
                  profileController.currentUser.value.name ?? "User",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                    () => Text(
                  profileController.currentUser.value.email ?? "Email not available",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildOption(
                context,
                icon: Icons.phone,
                label: "Phone",
              ),
              _buildOption(
                context,
                icon: Icons.video_call,
                label: "Video",
                labelStyle: const TextStyle(color: Color(0xffFF9900)),
              ),
              _buildOption(
                context,
                icon: Icons.chat,
                label: "Chat",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOption(BuildContext context,
      {required IconData icon, required String label, TextStyle? labelStyle}) {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 10),
          Text(
            label,
            style: labelStyle,
          ),
        ],
      ),
    );
  }
}