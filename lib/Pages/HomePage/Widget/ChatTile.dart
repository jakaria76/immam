import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final Image imageUrl; // This accepts an Image widget
  final String name;
  final String lastChat;
  final String lastTime;

  const ChatTile({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.lastChat,
    required this.lastTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // Directly use the Image widget passed via imageUrl
              imageUrl,
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    lastChat,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ],
          ),
          Text(
            lastTime,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}


