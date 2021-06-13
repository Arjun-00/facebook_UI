import 'package:facebookui/sections/headerButtonSection.dart';
import 'package:facebookui/widget/avatar.dart';
import 'package:facebookui/widget/blueTick.dart';
import 'package:facebookui/widget/headerButton.dart';
import 'package:flutter/material.dart';

import '../assets.dart';

class PostCard extends StatelessWidget {

  final String avatar;
  final String name;
  final String publishAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentCount;

  PostCard({
    @required this.avatar,
    @required this.name,
    @required this.publishAt,
    this.postTitle,
    this.postImage,
    this.showBlueTick = false,
    this.likeCount,
    this.shareCount,
    this.commentCount,
});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageScetion(),
          footerSection(),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          HeaderButtonSection(
            buttonOne: headerButton(
              buttonAction: (){
                print("like this post");
              },
              buttonColor: Colors.grey[700],
              buttonIcon: Icons.thumb_up,
              buttonText: "Like",
            ) ,
            buttonTwo: headerButton(
              buttonAction: (){
                print("comment clicked");
              },
              buttonColor: Colors.grey[700],
              buttonIcon: Icons.message_outlined,
              buttonText: "Comment",
            ),
            buttonThree: headerButton(
              buttonAction: (){
                print("Share clicked");
              },
              buttonColor: Colors.grey[700],
              buttonIcon: Icons.share,
              buttonText: "Share",
            ),

          ),

        ],
      ),
    );
  }

  Widget footerSection(){
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10,right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.thumb_up,color: Colors.white,
                    size: 10,
                  ),
                ),
                SizedBox(width: 5,),
                displayText(label: likeCount),

              ],
            ),
          ),

          Container(
            child: Row(

              children: [
               displayText(label: commentCount),
                SizedBox(width: 5,),
                displayText(label: "Comments"),
                SizedBox(width: 10,),
                displayText(label: shareCount),
                SizedBox(width: 5,),
                displayText(label: "Shares"),
                SizedBox(width: 10,),
                Avatar(
                  displayImage: car1,
                  displayStatus: false,
                  width: 25,
                  height: 25,
                ),
                SizedBox(width: 5,),
                IconButton(
                  onPressed: (){
                    print("Drop Down Button Pressed");
                  },
                  icon: Icon(Icons.arrow_drop_down_outlined,color: Colors.grey[700],),

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({@required String label}){
    return Text(label == null ? "" : label,
      style: TextStyle(
      color: Colors.grey[700],
    ),
    );
  }

  Widget titleSection(){
    return postTitle != null && postTitle != "" ?
      Container(
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 5,
      ),
      child: Text(
        postTitle == null ? "" : postTitle,style: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
      ),
    ) :SizedBox() ;
  }

  Widget imageScetion(){
    return Container(
      padding: EdgeInsets.only(top: 5,bottom: 5),
      child: Image.asset(postImage),
    );
  }



  Widget postCardHeader(){
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(name,style: TextStyle(
            color: Colors.black,
          ),
          ),
          SizedBox(width: 10,),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishAt == null ? "" :publishAt),
          SizedBox(width: 10,),
          Icon(Icons.public,color: Colors.grey[700],
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: (){
          print("icon clicked");
        },
        icon:Icon(Icons.more_horiz),
        color: Colors.grey[700],
      ),
    );
  }
}