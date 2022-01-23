import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {

  // const AppBarButton({ Key? key }) : super(key: key);
  

  

  final IconData? buttonIcon;
  final void Function()? buttonAction;
  final Color? IconColor;

  AppBarButton({this.buttonIcon,this.buttonAction,this.IconColor=Colors.black});



  @override
  Widget build(BuildContext context) {
    return  Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.grey[300], shape: BoxShape.circle),
              child: IconButton(
                icon: Icon(buttonIcon,color:IconColor,size: 25,),
                onPressed: buttonAction,
              ),
            );
  }
}