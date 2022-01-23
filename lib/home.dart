import 'package:facebook_home/assets.dart';
import 'package:facebook_home/sections/header_button_Section.dart';
import 'package:facebook_home/sections/room_section.dart';
import 'package:facebook_home/sections/status_section.dart';
import 'package:facebook_home/sections/story_section.dart';
import 'package:facebook_home/widgets/avatar.dart';
import 'package:facebook_home/widgets/post_card.dart';
import 'package:flutter/material.dart';
import './widgets/app_bar_button.dart';
// import './'

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(thickness: 1, color: Colors.grey[300]);
    Widget thickDivider = Divider(thickness: 10, color: Colors.grey[300]);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          actions: [
            AppBarButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("search clicked");
              },
            ),
            AppBarButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print("chat clicked");
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(avatar: dulqar,name: "Mammooty",publish_time: "5h",postImage: reus,postTitle: "Happy XMAS",accountVerification: true,)
          ],
        ),
      ),
    );
  }
}
