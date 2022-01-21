import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {

  // const AppBarButton({ Key? key }) : super(key: key);
  

  

  final IconData? buttonIcon;
  final void Function()? buttonAction;

  AppBarButton({this.buttonIcon,this.buttonAction,});



  @override
  Widget build(BuildContext context) {
    return  Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.grey[300], shape: BoxShape.circle),
              child: IconButton(
                icon: Icon(buttonIcon,color: Colors.black,size: 25,),
                onPressed: buttonAction,
              ),
            );
  }
}