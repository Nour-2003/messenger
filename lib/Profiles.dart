import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  String image;
  String name;

  Story({required this.image, required this.name});

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

class Profile extends StatelessWidget {
  String image;
  String name;
  String text;

  Profile({required this.image, required this.name,required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
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
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w500
            ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8,),
            Text(text,style: TextStyle(
              fontSize: 15,color: Colors.white,fontWeight: FontWeight.w400
            ),)
          ],
        )
      ],
    );
  }
}
