import 'package:flutter/material.dart';

import '../assets.dart';

class SuggectionCardSection extends StatelessWidget {

 /* final String avatar;
  final String name;
  final String mutualfriends;
  final void Function() addFriend;
  final void Function() removeFriend;

  SuggectionCardSection({
    @required this.avatar,
    @required this.name,
    @required this.mutualfriends,
    @required this.addFriend,
    @required this.removeFriend,
}); */
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(bottom: 8),
        children: [
         suggection(avatar1: car2, name1: "JASIR C", mutualfriends1: "145 Mutual Friends", addFriend1: (){ print("Add Friend");}, removeFriend1:  (){ print("remove Friend");}),
          suggection(avatar1: car3, name1: "ACHOOS", mutualfriends1: "10 Mutual Friends", addFriend1: (){ print("Add Friend");}, removeFriend1:  (){ print("remove Friend");}),
          suggection(avatar1: car1, name1: "KOLAPAN", mutualfriends1: "1 Mutual Friends", addFriend1: (){ print("Add Friend");}, removeFriend1:  (){ print("remove Friend");}),
          suggection(avatar1: car3, name1: "KANE.W", mutualfriends1: " 115Mutual Friends", addFriend1: (){ print("Add Friend");}, removeFriend1:  (){ print("remove Friend");}),
          suggection(avatar1: car2, name1: "JASIR C", mutualfriends1: "145 Mutual Friends", addFriend1: (){ print("Add Friend");}, removeFriend1:  (){ print("remove Friend");}),
          suggection(avatar1: car3, name1: "ACHOOS", mutualfriends1: "10 Mutual Friends", addFriend1: (){ print("Add Friend");}, removeFriend1:  (){ print("remove Friend");}),
          suggection(avatar1: car1, name1: "KOLAPAN", mutualfriends1: "1 Mutual Friends", addFriend1: (){ print("Add Friend");}, removeFriend1:  (){ print("remove Friend");}),
        ],
      ),
    );
  }

  Widget suggection({String avatar1,String name1,String mutualfriends1,Function() addFriend1,Function() removeFriend1}){
    return Container(
      width: 250,
      margin: EdgeInsets.only(left: 10,right: 10),
      child: Stack(
        children: [
          suggesionImage(avatar1 : avatar1),
          suggestionDetails(name1 : name1 ,mutualfriends1: mutualfriends1,addFriends1: addFriend1,removeFriends1: removeFriend1 ),

        ],
      ),
    );
  }

  Widget suggestionDetails({String name1,String mutualfriends1,Function() addFriends1,Function() removeFriends1}){
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(
            color: Colors.grey[300],
            width: 1
          ),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
        ),
        height: 150,
        child: Column(
          children: [
            ListTile(
              title: Text(name1 != null ? name1 : ""),
              subtitle: Text(mutualfriends1 != null ? mutualfriends1 : ""),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,bottom: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButton(buttonAction: addFriends1, buttonIcon: Icons.add_moderator, buttonColor: Colors.blueAccent, buttonTextColor: Colors.white, buttonIconColor: Colors.white, buttonText: "Add Friend"),
                  blankButton(buttonAction: removeFriends1, buttonText: "Remove", buttonTextColor: Colors.black, buttonColor: Colors.grey[300]),

                ],
              ),
            ),
          ],
        ),

    ),
    );
  }

  Widget iconButton({
  @required void Function() buttonAction,
    @required IconData buttonIcon,
    @required Color buttonColor,
    @required Color buttonTextColor,
    @required Color buttonIconColor,
    @required String buttonText,
})
  {
    return FlatButton.icon(
      color: buttonColor,
        onPressed: buttonAction,
        icon: Icon(buttonIcon,
        color: buttonIconColor,),
        label: Text(buttonText,style: TextStyle(
          color: buttonTextColor,
        ),),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );
  }

  Widget blankButton({
  @required void Function() buttonAction,
   @required String buttonText,
    @required Color buttonTextColor,
   @required Color buttonColor
}){
    return FlatButton(
      onPressed: buttonAction,
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Text(buttonText,style: TextStyle(color: buttonTextColor),),
    );

  }


  Widget suggesionImage({String avatar1}){
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: avatar1 !=null ? Image.asset(
          avatar1,height: 250,
          fit: BoxFit.cover,
        ) : SizedBox(),
      ),
    );
  }

}
