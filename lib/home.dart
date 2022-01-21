import 'package:facebook_home/sections/status_section.dart';
import 'package:flutter/material.dart';
import './widgets/app_bar_button.dart';
// import './'

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            AppBarButton(buttonIcon: Icons.search,buttonAction: (){print("search clicked");},),
            AppBarButton(buttonIcon: Icons.chat,buttonAction: (){print("chat clicked");},),
           
          ],
        ),
        body: ListView(
          children: [
            StatusSection()
          ],
        ),
      ),
    );
  }
}
