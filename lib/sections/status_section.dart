import 'package:flutter/material.dart';
import 'package:facebook_home/assets.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(70),
        child: Image.asset(
          dulqar,
          width: 50,
          height: 50,
        ),
      ),
      title: TextField(
        decoration: InputDecoration(
            hintText: "What's on your mind?",
            hintStyle: TextStyle(color: Colors.black),
            border: InputBorder.none),
            
      ),
    );
  }
}
