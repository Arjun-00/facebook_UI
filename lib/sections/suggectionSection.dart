import 'package:flutter/material.dart';

class SuggectionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Column(
        children: [
          ListTile(
            title: Text("People You may know"),
            trailing: IconButton(
              onPressed: (){
                print("more clicked");
              },
              icon:Icon(Icons.more_horiz,
              color: Colors.grey[700],
              ),
          ),
          ),
        ],
      ),
    );
  }
}
