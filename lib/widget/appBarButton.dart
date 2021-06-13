import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData buttonIcon;
  final Color buttonColor;
  final void Function() buttonAction;

  AppBarButton({
    @required this.buttonIcon,
    @required this.buttonAction,
    this.buttonColor,
    //this.buttonColor = Colors.black,   FOR SETTING DEFAULT COLORS

});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(buttonIcon,
          color: buttonColor,size: 25,),
        onPressed: buttonAction,
      ),
    );
  }
}
