import 'package:facebookui/sections/headerButtonSection.dart';
import 'package:facebookui/sections/roomSection.dart';
import 'package:facebookui/sections/statusSection.dart';
import 'package:facebookui/sections/storySection.dart';
import 'package:facebookui/sections/suggectionCardSession.dart';
import 'package:facebookui/sections/suggectionSection.dart';
import 'package:facebookui/widget/headerButton.dart';
import 'package:facebookui/widget/postCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facebookui/widget/appBarButton.dart';

import 'assets.dart';


class Home extends StatelessWidget {

  Widget thinDivider = Divider(
    thickness: 1,
    color: Colors.grey[300],
  );
  Widget thickDivider = Divider(
    thickness: 10,
    color: Colors.grey[300],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text("FACEBOOK",style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
          actions: [
            AppBarButton(
              buttonIcon: Icons.search,
              buttonAction: (){
                print("search screen appear");
              },
              buttonColor: Colors.grey,
            ),
            AppBarButton(
              buttonIcon: Icons.chat,
              buttonAction: (){
                print("chat Option");
              },
              buttonColor: Colors.grey,
            )
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                buttonAction: (){
                  print("First Button");
                },
                buttonColor: Colors.red,
                buttonIcon: Icons.video_call,
                buttonText: "Live",
              ),
              buttonTwo: headerButton(
                buttonAction: (){
                  print("Photo Clicked");
                },
                buttonColor: Colors.green,
                buttonIcon: Icons.photo_library,
                buttonText: "Photo"
              ),
              buttonThree: headerButton(
                buttonAction: (){
                  print("Room Clicked");
                },
                buttonColor: Colors.purple,
                buttonIcon: Icons.video_call,
                buttonText: "Room"
              ),
            ),
           thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              name: "Arjun",
              avatar: car1,
              publishAt: "5h",
              postTitle: "HAPPY ONAM",
              postImage: car3,
              showBlueTick: true,
              likeCount: "1K",
              shareCount: "50K",
              commentCount: "25K",
            ),
            thickDivider,
            PostCard(
              name: "AKKUDU",
              avatar: car3,
              publishAt: "1Day ago",
              postTitle: "",
              postImage: car2,
              showBlueTick: true,
              likeCount: "20K",
              shareCount: "1K",
              commentCount: "5K",
            ),
            thickDivider,
            SuggectionSection(),
            SuggectionCardSection(),
            //SuggectionCardSection(avatar: car2, name: "JASIR C", mutualfriends: "145 Mutual Friends", addFriend: (){ print("Add Friend");}, removeFriend:  (){ print("remove Friend");}),
           // SuggectionCardSection(avatar: car3, name: "ARJUN C", mutualfriends: "10 Mutual Friends", addFriend: (){ print("Add Friend");}, removeFriend:  (){ print("remove Friend");}),
           // SuggectionCardSection(avatar: car1, name: "SHAHIR PP", mutualfriends: "150 Mutual Friends", addFriend: (){ print("Add Friend");}, removeFriend:  (){ print("remove Friend");}),
            thickDivider,
            PostCard(
              name: "Murali",
              avatar: car2,
              publishAt: "5h",
              postTitle: "HAPPY ONAM",
              postImage: car2,
              showBlueTick: true,
              likeCount: "1K",
              shareCount: "50K",
              commentCount: "25K",
            ),
            thickDivider,

          ],
        ),
      ),
    );
  }
}
