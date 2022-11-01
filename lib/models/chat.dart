import 'package:flutter/material.dart';

class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    this.name = '',
    this.lastMessage = '',
    this.image = '',
    this.time = '',
    this.isActive = false,
  });
}

List chatsData = [
  Chat(
    name: "Michael Grant",
    lastMessage: "You: Thanks",
    image: "assets/images/user.png",
    time: "Yesterday",
    isActive: true,
  ),
  Chat(
    name: "Darren Swinney",
    lastMessage: "Darren: Perhaps if there was some...",
    image: "assets/images/user_2.png",
    time: "13:24",
    isActive: false,
  ),
  Chat(
    name: "Alexander Murphy",
    lastMessage: "Alexandr: Based on what you've told...",
    image: "assets/images/user_3.png",
    time: "Mon",
    isActive: false,
  ),
  Chat(
    name: "Stephanie Jones",
    lastMessage: "You: What time do you think you'll told...",
    image: "assets/images/user_5.png",
    time: "14:48",
    isActive: true,
  ),
  Chat(
    name: "Julie McAndrew",
    lastMessage: "You: Thanks Julie",
    image: "assets/images/user_5.png",
    time: "14:48",
    isActive: false,
  ),
  Chat(
    name: "Dilan Edmonds",
    lastMessage: "Hope you are doing well...",
    image: "assets/images/user_4.png",
    time: "2d ago",
    isActive: false,
  ),
  Chat(
    name: "Esther Howard",
    lastMessage: "Hello Abdullah! I am...",
    image: "assets/images/user_2.png",
    time: "8m ago",
    isActive: true,
  ),
  Chat(
    name: "Ralph Edwards",
    lastMessage: "Do you have update...",
    image: "assets/images/user_3.png",
    time: "5d ago",
    isActive: false,
  ),
];
