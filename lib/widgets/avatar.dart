import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String? displayImage;
  final bool? displayStaus;
  final bool? displayBorder;
  const Avatar({this.displayImage, this.displayStaus, this.displayBorder});
  // const Avatar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder == true
                ? Border.all(width: 3, color: Colors.blueAccent)
                : Border()),
        margin: EdgeInsets.only(left: 4, right: 4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(70),
          child: Image.asset(
            displayImage.toString(),
            width: 50,
            height: 50,
          ),
        ),
      ),
      displayStaus == true
          ? Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    )),
              ),
            )
          : SizedBox()
    ]);
  }
}
