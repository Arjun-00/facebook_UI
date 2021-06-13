import 'package:facebookui/widget/storyCard.dart';
import 'package:flutter/material.dart';

import '../assets.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            avatar: car1,
            story: car1,
            createstoryStatus: true,
          ),

          StoryCard(
            labelText: "Car2",
            avatar: kane,
            story: car2,
            createstoryStatus: false,
            displayBorder: true,
          ),

          StoryCard(
            labelText: "Car 3",
            avatar: car2,
            story: car3,
            createstoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Kane",
            avatar: car1,
            story: kane,
            createstoryStatus: false,
          ),
          StoryCard(
            labelText: "car 1",
            avatar: car1,
            story: car1,
            createstoryStatus: false,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
