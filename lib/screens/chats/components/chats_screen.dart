import 'package:chat/models/chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_card.dart';

class Chats extends StatefulWidget {
  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              itemCount: chatsData.length,
              itemBuilder: (context, index) {
                return ChatCard(chat: chatsData[index], press: () {});
              }),
        ),
      ],
    );
  }
}
