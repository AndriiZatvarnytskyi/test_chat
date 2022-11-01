import 'package:flutter/material.dart';

import 'components/chats_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final tabs = [
    Chats(),
    Center(child: Text('Notifications')),
    Center(child: Text('More'))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: tabs[_selectedIndex],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.messenger),
          label: "Chats",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: "Notifications"),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
      ],
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text("Chats"),
      centerTitle: true,
      leading: Builder(builder: (BuildContext context) {
        return IconButton(
          icon: CircleAvatar(
            radius: 12,
            backgroundImage: AssetImage("assets/images/user_2.png"),
          ),
          onPressed: () {},
        );
      }),
      actions: [
        IconButton(
          icon: Icon(Icons.person_add),
          onPressed: () {},
        ),
      ],
    );
  }
}
