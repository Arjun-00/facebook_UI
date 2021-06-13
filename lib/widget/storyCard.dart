import 'package:facebookui/widget/appBarButton.dart';
import 'package:facebookui/widget/avatar.dart';
import 'package:flutter/material.dart';

import '../assets.dart';

class StoryCard extends StatelessWidget {

  final String labelText;
  final String story;
  final String avatar;
  final bool createstoryStatus;
  final bool displayBorder;

  StoryCard({
    @required this.labelText,
    @required this.story,
    @required this.avatar,
    this.createstoryStatus = false,
    this.displayBorder = false,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        left: 5,right: 5,
        top: 10,bottom: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
          borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createstoryStatus ? AppBarButton(
            buttonIcon:Icons.add,
              buttonColor: Colors.black,
              buttonAction: (){
              print("Create new Story");
              },

          ) : Avatar(
              displayImage: avatar,
              displayStatus: false,
              displayBorder: displayBorder,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(labelText != null ? labelText : "N/A",
            style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            ),
            ),
          ),

        ],
      ),
    );
  }
}
