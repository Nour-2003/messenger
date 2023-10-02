import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  String image;
  String name;

  Profile({required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 37,
                backgroundImage: AssetImage(image),
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
          Text(
            name,
            style: TextStyle(color: Colors.white),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
