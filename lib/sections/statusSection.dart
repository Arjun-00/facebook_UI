import 'package:facebookui/widget/avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebookui/assets.dart';

class  StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayImage: car1,displayStatus: false,
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "What's on Your Mind...!",
          hintStyle: TextStyle(color: Colors.black
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
