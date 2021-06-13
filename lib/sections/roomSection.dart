
import 'package:facebookui/widget/avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../assets.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(displayImage: car1,displayStatus: true,),
          Avatar(displayImage: car2,displayStatus: true,),
          Avatar(displayImage: car3,displayStatus: true),
          Avatar(displayImage: kane,displayStatus: true),
          Avatar(displayImage: car1,displayStatus: true),
          Avatar(displayImage: car2,displayStatus: true),
          Avatar(displayImage: car3,displayStatus: true),
          Avatar(displayImage: car1,displayStatus: true),
          Avatar(displayImage: car2,displayStatus: true),
          Avatar(displayImage: car3,displayStatus: true),
          Avatar(displayImage: car1,displayStatus: true),
          Avatar(displayImage: car2,displayStatus: true),
          Avatar(displayImage: car3,displayStatus: true),


        ],
      ),
    );
  }







  Widget createRoomButton(){
  return  Container(
    padding: EdgeInsets.only(left: 5,right: 5),
    child:  OutlineButton.icon(
      shape: StadiumBorder(),
      onPressed: (){}
      , icon:Icon(Icons.video_call,color: Colors.purple,),
      label: Text("Create \nRoom",
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
      borderSide: BorderSide(
        color: Colors.blue[100],
        width: 2,
      ),
    ),
  );
  }

}
