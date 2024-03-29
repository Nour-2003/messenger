import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger/Profiles.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> items = [
    Story(name: "Nour Hesham", image: 'images/profile2.jpg'),
    Story(name: "Hagar Hesham", image: 'images/profile3.jpeg'),
    Story(name: "Abdelrahman Wael Ahmed", image: 'images/profile4.jpg'),
    Story(name: "Abdelrahman ibrahim", image: 'images/profile5.jpeg'),
    Story(name: "Sara Hesham", image: 'images/profile6.jpg'),
    Story(name: "Maryam Hesham", image: 'images/profile7.jpg'),
    Story(name: "Mohamed Ahmed Yasser", image: 'images/profile8.jpeg'),
    Story(name: "Malak Yasser", image: 'images/profile9.jpeg'),
    Story(name: "Serif Ahmed Yasser", image: 'images/profile10.jpeg'),
  ];
  final List<Widget> Profiles = [
    Profile(
        name: "Nour Hesham",
        image: 'images/profile2.jpg',
        text: "Reacted ❤️ to your message .29 Sep"),
    Profile(
        name: "Hagar Hesham",
        image: 'images/profile3.jpeg',
        text: "You called Hagar .17 Feb"),
    Profile(
        name: "Abdelrahman Wael Ahmed",
        image: 'images/profile4.jpg',
        text: "Abdelrahman Called you .14 Nov"),
    Profile(
        name: "Abdelrahman ibrahim",
        image: 'images/profile5.jpeg',
        text: "235 .19 Aug"),
    Profile(
        name: "Sara Hesham",
        image: 'images/profile6.jpg',
        text: "Sara Sent voice message .16 Nov"),
    Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 37,
              backgroundImage: AssetImage('images/profile7.jpg'),
            ),
            CircleAvatar(
              radius: 8,
              backgroundColor: Colors.black,
            ),
            CircleAvatar(
              radius: 7,
              backgroundColor: Colors.green[500],
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Maryam Hesham",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "You: Ok then .24 Nov",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Icon(
              Icons.check_circle,
              color: Colors.white24,
            ),
          ],
        )
      ],
    ),
    Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 37,
              backgroundImage: AssetImage('images/profile8.jpeg'),
            ),
            CircleAvatar(
              radius: 8,
              backgroundColor: Colors.black,
            ),
            CircleAvatar(
              radius: 7,
              backgroundColor: Colors.green[500],
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mohamed Ahmed Yasser",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "You: Friday then ?? .24 Nov",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 10,
              backgroundImage: AssetImage('images/profile8.jpeg'),
            )
          ],
        ),
      ],
    ),
    Profile(
        name: "Malak Yasser",
        image: 'images/profile9.jpeg',
        text: "Reacted ❤️ to your message .29 Sep"),
    Profile(
        name: "Serif Ahmed Yasser",
        image: 'images/profile10.jpeg',
        text: "You called Serif .17 Feb"),
  ];

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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
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
              Container(
                height: 110,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 13,
                    );
                  },
                  itemBuilder: (context, index) {
                    return items[index];
                  },
                  itemCount: items.length,
                ),
              ),
              SizedBox(height: 10,),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Profiles[index];
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemCount: Profiles.length,
              )
            ],
          ),
        ),
      ),
    );
  }
}
