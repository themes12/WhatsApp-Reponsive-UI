import 'package:flutter/material.dart';
import 'package:flutter_application_1/info.dart';
import 'package:flutter_application_1/widgets/my_message_card.dart';
import 'package:flutter_application_1/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessageCard(
            date: messages[index]["time"].toString(),
            message: messages[index]["text"].toString(),
          );
        }
        return SenderMessageCard(
          date: messages[index]["time"].toString(),
          message: messages[index]["text"].toString(),
        );
      },
    );
  }
}
