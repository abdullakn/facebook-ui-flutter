import 'package:facebook_home/assets.dart';
import 'package:facebook_home/widgets/app_bar_button.dart';
import 'package:facebook_home/widgets/avatar.dart';
import 'package:flutter/material.dart';
import '../assets.dart';

class StoryCard extends StatelessWidget {
  final String? labelText;
  final String? avatar;
  final String? story;
  final bool? storyStatus;

  const StoryCard({this.labelText, this.avatar, this.story, this.storyStatus});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(avatar.toString()), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
              left: 10,
              top: 10,
              child: storyStatus == true
                  ? AppBarButton(
                      buttonIcon: Icons.add,
                      buttonAction: () {},
                      IconColor: Colors.blue,
                    )
                  : Avatar(displayImage: story,displayStaus: false,displayBorder:true)),
          Positioned(
            child: Text(labelText.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
            bottom: 5,
            left: 5,
          )
        ],
      ),
    );
  }
}
