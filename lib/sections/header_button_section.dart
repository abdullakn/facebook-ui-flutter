import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  const HeaderButtonSection({Key? key}) : super(key: key);

  Widget headerButton(
      {String? buttonText, IconData? buttonIcon, Color? buttonColor}) {
    return Row(
      children: [
        Icon(
          buttonIcon,
          color: buttonColor,
        ),
        SizedBox(
          width: 20,
        ),
        Text(buttonText.toString()),
      ],
    );
  }

  

  @override
  Widget build(BuildContext context) {
   Widget buttonDivider = VerticalDivider(
    thickness: 0.7,
    color: Colors.grey[300]
  );

    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
              buttonIcon: Icons.video_call,
              buttonText: "Live",
              buttonColor: Colors.red),
          buttonDivider,
          headerButton(
              buttonIcon: Icons.photo_library,
              buttonText: "Photo",
              buttonColor: Colors.yellow),
          buttonDivider,
          headerButton(
              buttonIcon: Icons.video_call,
              buttonText: "Room",
              buttonColor: Colors.red),
        ],
      ),
    );
  }
}
