import 'package:facebook_home/assets.dart';
import 'package:facebook_home/widgets/avatar.dart';
import 'package:facebook_home/widgets/blue_tick.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String? avatar;
  final String? name;
  final String? publish_time;
  final String? postTitle;
  final String? postImage;
  final bool? accountVerification;
  const PostCard(
      {this.avatar,
      this.name,
      this.publish_time,
      this.postImage,
      this.postTitle,
      this.accountVerification = false});
  // const PostCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postHeaderSection(),
          titleSection(),
          imageSection(),
          footerSection()
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 15,right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration:BoxDecoration(color: Colors.blue,shape: BoxShape.circle),
                  child: Icon(
                Icons.thumb_up,
                size: 10,
                color: Colors.white,
              )),
              displayText(label: "15 k"),
            ],
          ),
          
          Container(
            child: Row(
              children: [
                displayText(label: "10 K"),
                displayText(label: " comments "),
                SizedBox(width: 5,),
                  displayText(label: "5 K"),
                displayText(label: " shares"),
               
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displayText({String? label}){
    return  Text(label.toString(),style: TextStyle(color: Colors.grey[700]),);
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postImage.toString()),
    );
  }

  Widget titleSection() {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        postTitle.toString(),
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }

  Widget postHeaderSection() {
    return ListTile(
      leading: Avatar(
        displayImage: dulqar,
        displayStaus: false,
      ),
      title: Row(
        children: [
          Text(
            name.toString(),
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          accountVerification == true ? BlueTick() : SizedBox()
        ],
      ),
      subtitle: Row(
        children: [
          Text(publish_time.toString()),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.more_horiz),
        color: Colors.grey[700],
      ),
    );
  }
}
