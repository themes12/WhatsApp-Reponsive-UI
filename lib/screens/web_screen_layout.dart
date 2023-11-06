import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/widgets/chat_list.dart';
import 'package:flutter_application_1/widgets/contacts_list.dart';
import 'package:flutter_application_1/widgets/web_chat_appbar.dart';
import 'package:flutter_application_1/widgets/web_profile_bar.dart';
import 'package:flutter_application_1/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [WebProfileBar(), WebSearchBar(), ContactsList()],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/backgroundImage.png'),
                  fit: BoxFit.cover)),
          child: Column(children: [
            WebChatAppBar(),
            Expanded(child: ChatList()),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: dividerColor)),
                  color: chatBarMessage),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.grey,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.attach_file,
                        color: Colors.grey,
                      )),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: searchBarColor,
                          filled: true,
                          hintText: 'Type a message',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(
                                width: 0, style: BorderStyle.none),
                          ),
                          contentPadding: const EdgeInsets.only(left: 20)),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.mic,
                        color: Colors.grey,
                      )),
                ],
              ),
            )
          ]),
        )
      ],
    ));
  }
}
