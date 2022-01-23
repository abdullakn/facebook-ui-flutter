import 'package:facebook_home/assets.dart';
import 'package:facebook_home/widgets/story_card.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(labelText: "Add Story",avatar: dulqar,story: reus,storyStatus: true,),
          StoryCard(labelText: "Reus story",avatar: toni,story: dulqar,storyStatus: false,),
          StoryCard(labelText: "toni Story",avatar: reus,story: toni,storyStatus: false,),
          StoryCard(labelText: "dulqar Story",avatar: toni,story: reus,storyStatus: false,),
          StoryCard(labelText: "Add Story",avatar: reus,story: dulqar,storyStatus: false,),
         
          
        ],
      ),
      
    );
  }
}