import 'package:fb/assets.dart';
import 'package:fb/widgets/story_card.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            story: ks,
            avatar: ks,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Sunny Leone",
            story: sunnyStory,
            avatar: sunny,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Tovino Thomas",
            story: tovinoStory,
            avatar: tovino,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Nazriya Nazim",
            story: nazriyaStory,
            avatar: nazriya,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Mohanlal",
            story: mohanlalStory,
            avatar: mohanlal,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Dulquer Salmaan",
            story: dqStory,
            avatar: dq,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
