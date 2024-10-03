import 'package:fb/assets.dart';
import 'package:fb/sections/header_btn.dart';
import 'package:fb/sections/room_section.dart';
import 'package:fb/sections/status_section.dart';
import 'package:fb/sections/story_section.dart';
import 'package:fb/widgets/circular_btn.dart';
import 'package:fb/widgets/header_btn_widget.dart';
import 'package:fb/widgets/post_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );

    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "Facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(buttonIcon: Icons.search, buttonAction: () {}),
            CircularButton(buttonIcon: Icons.chat, buttonAction: () {}),
          ],
        ),
        body: ListView(
          children: [
            const StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerBtn(
                buttonText: "Live",
                buttonIcon: Icons.video_call,
                buttonAction: () {},
                btnColor: Colors.red,
              ),
              buttonTwo: headerBtn(
                buttonText: "Photos",
                buttonIcon: Icons.photo_library,
                buttonAction: () {},
                btnColor: Colors.green,
              ),
              buttonThree: headerBtn(
                buttonText: "Room",
                buttonIcon: Icons.video_call,
                buttonAction: () {},
                btnColor: Colors.purple,
              ),
            ),
            thickDivider,
            const RoomSection(),
            thickDivider,
            const StorySection(),
            thickDivider,
            PostCard(
              avatar: tovino,
              name: "Tovino Thomas",
              publishedAt: "5h",
              postTitle: "🥰🤗❤️🙏🏼 #2018Movie",
              postImage: tovinoPost,
              showBlueTik: true,
              likeCount: "10M",
              shareCount: "50K",
              commentCount: "100K",
            ),
            thickDivider,
            PostCard(
              avatar: ks,
              name: "Karthik Surya",
              publishedAt: "3h",
              postTitle:
                  "Happy Birthday Manju Chechi🫂\nLove you so much chechi for always being there and help me get through the toughest times🥰",
              postImage: ksPost,
              showBlueTik: false,
              likeCount: "10M",
              shareCount: "50K",
              commentCount: "100K",
            ),
            thickDivider,
            PostCard(
              avatar: sunny,
              name: "Sunny lenone",
              publishedAt: "3h",
              postTitle: "",
              postImage: sunnyPost,
              showBlueTik: true,
              likeCount: "10M",
              shareCount: "50K",
              commentCount: "100K",
            ),
            thickDivider,
            PostCard(
              avatar: mamooty,
              name: "Mammootty",
              publishedAt: "3h",
              postTitle:
                  "Joined the Sets of Bazooka Movie ! Written and Directed by Deeno Dennis , Produced by Theatre of Dreams & Saregama",
              postImage: mamootyPost,
              showBlueTik: true,
              likeCount: "10M",
              shareCount: "50K",
              commentCount: "100K",
            ),
            thickDivider,
            PostCard(
              avatar: rashmika,
              name: "Rashmika Mandanna",
              publishedAt: "3h",
              postTitle: "",
              postImage: rashmikaPost,
              showBlueTik: true,
              likeCount: "10M",
              shareCount: "50K",
              commentCount: "100K",
            ),
            thickDivider,
            PostCard(
              avatar: nazriya,
              name: "Nazriya Nazim",
              publishedAt: "3h",
              postTitle: "",
              postImage: nazriyaPost,
              showBlueTik: false,
              likeCount: "10M",
              shareCount: "50K",
              commentCount: "100K",
            ),
            thickDivider,
            PostCard(
              avatar: mohanlal,
              name: "Mohanlal",
              publishedAt: "3h",
              postTitle:
                  '"What a strange thing to be alive beneath cherry blossoms."  - Kobayashi Issa\nAt Hiroshima Park, Aomori, Japan',
              postImage: mohanlalPost,
              showBlueTik: true,
              likeCount: "10M",
              shareCount: "50K",
              commentCount: "100K",
            ),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
