import 'package:facebook_home/assets.dart';
import 'package:facebook_home/widgets/avatar.dart';
import 'package:flutter/material.dart';
import '../assets.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        
        children: [
          createRoomButton(),
          Avatar(displayImage:dulqar,displayStaus: true,),
          Avatar(displayImage:reus,displayStaus: true),
          Avatar(displayImage:dulqar,displayStaus: true),
          Avatar(displayImage:toni,displayStaus: true),
           Avatar(displayImage:dulqar,displayStaus: true),
          Avatar(displayImage:reus,displayStaus: true),
          Avatar(displayImage:dulqar,displayStaus: true),
          Avatar(displayImage:toni,displayStaus: true),
           Avatar(displayImage:dulqar,displayStaus: true),
          Avatar(displayImage:reus,displayStaus: true),
          Avatar(displayImage:dulqar),
          Avatar(displayImage:toni),
           Avatar(displayImage:dulqar),
          Avatar(displayImage:reus),
          Avatar(displayImage:dulqar),
          Avatar(displayImage:toni),
           Avatar(displayImage:dulqar),
          Avatar(displayImage:reus),
          Avatar(displayImage:dulqar),
          Avatar(displayImage:toni),
           Avatar(displayImage:dulqar),
          Avatar(displayImage:reus),
          Avatar(displayImage:dulqar),
          Avatar(displayImage:toni),
           Avatar(displayImage:dulqar),
          Avatar(displayImage:reus),
          Avatar(displayImage:dulqar),
          Avatar(displayImage:toni),
           Avatar(displayImage:dulqar),
          Avatar(displayImage:reus),
          Avatar(displayImage:dulqar),
          Avatar(displayImage:toni),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(left: 5,right: 5),
      child: OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              side: BorderSide(color: Colors.lightBlue.shade200, width: 1.5)),
          icon: Icon(
            Icons.video_call,
            color: Colors.purple,
          ),
          label: Text(
            "create\nRoom",
            style: TextStyle(color: Colors.blue),
          )),
    );
  }
}
