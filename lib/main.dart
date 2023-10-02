import 'package:flutter/material.dart';
import 'package:messenger/Profiles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('images/profile1.jpg'),
                ),
                Positioned(
                    top: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.red,
                      child: Text(
                        "2",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ))
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Text("Chats"),
          ],
        ),
        actions: [
          Row(
            children: [
              CircleAvatar(
                radius: 23,
                backgroundColor: Colors.grey[900],
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 23,
                backgroundColor: Colors.grey[900],
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15,
              )
            ],
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 48,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[700],
                    ),
                    fillColor: Colors.grey[900],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: "Search",
                    labelStyle:
                        TextStyle(color: Colors.grey[700], fontSize: 18)),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Profile(name:"Nour Hesham",image: 'images/profile2.jpg'),
                  SizedBox(
                    width: 10,
                  ),
                  Profile(name:"Hagar Hesham",image: 'images/profile3.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  Profile(name:"Abdelrahman Wael Ahmed",image: 'images/profile4.jpg'),
                  SizedBox(
                    width: 10,
                  ),
                  Profile(name:"Abdelrahman ibrahim",image: 'images/profile5.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  Profile(name:"Sara Hesham",image: 'images/profile6.jpg'),
                  SizedBox(
                    width: 10,
                  ),
                  Profile(name:"Maryam Hesham",image: 'images/profile7.jpg'),
                  SizedBox(
                    width: 10,
                  ),
                  Profile(name:"Alaa Soliman",image: 'images/profile1.jpg'),
                  SizedBox(
                    width: 10,
                  ),
                  Profile(name:"Malak Yasser",image: 'images/profile3.jpeg'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
