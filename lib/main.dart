import 'package:flutter/material.dart';
import 'package:messenger/HomeScreen.dart';

import 'DarkTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  Color customBackgroundColor = Colors.black;

  final tabs = [
    MyHomePage(),
    Center(
        child: Text(
      "Calls",
      style: TextStyle(fontSize: 20),
    )),
    Center(
        child: Text(
      "People",
      style: TextStyle(fontSize: 20),
    )),
    Center(
        child: Text(
      "Stories",
      style: TextStyle(fontSize: 20),
    )),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColorDark,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.blue,
         unselectedItemColor: Colors.grey,
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_bubble_sharp,
                  size: 26,
                ),
                label: 'Chats'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.videocam,
                  size: 28,
                ),
                label: 'Calls'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                  size: 28,
                ),
                label: 'People'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.amp_stories,
                  size: 28,
                ),
                label: 'Stories'),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: tabs[_currentIndex],
      ),
    );
  }
}
