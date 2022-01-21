import 'package:facebook_home/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebook_home/assets.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(displayImage: dulqar,),
      title: TextField(
        decoration: InputDecoration(
            hintText: "What's on your mind?",
            hintStyle: TextStyle(color: Colors.black),
            border: InputBorder.none),
            
      ),
    );
  }
}
