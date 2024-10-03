import 'package:fb/sections/header_btn.dart';
import 'package:fb/widgets/avatar.dart';
import 'package:fb/widgets/blue_tik.dart';
import 'package:fb/widgets/header_btn_widget.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTik;
  final String shareCount;
  final String commentCount;
  final String likeCount;

  const PostCard({
    super.key,
    required this.avatar,
    required this.name,
    required this.publishedAt,
    required this.postImage,
    required this.postTitle,
    this.showBlueTik = false,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          HeaderButtonSection(
            buttonOne: headerBtn(
              buttonText: "Like",
              buttonIcon: Icons.thumb_up_alt_outlined,
              buttonAction: () {},
              btnColor: const Color(0xFF616161),
            ),
            buttonTwo: headerBtn(
              buttonText: "Comment",
              buttonIcon: Icons.message_outlined,
              buttonAction: () {},
              btnColor: const Color(0xFF616161),
            ),
            buttonThree: headerBtn(
              buttonText: "Share",
              buttonIcon: Icons.share_outlined,
              buttonAction: () {},
              btnColor: const Color(0xFF616161),
            ),
          ),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
                const SizedBox(width: 5),
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                const SizedBox(width: 5),
                displayText(label: "Comments"),
                const SizedBox(width: 10),
                displayText(label: shareCount),
                const SizedBox(width: 5),
                displayText(label: "Shares"),
                const SizedBox(width: 10),
                Avatar(
                  displayImage: avatar,
                  displayStatus: false,
                  width: 20,
                  height: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(
        postImage,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }

  Widget titleSection() {
    return Container(
      padding: const EdgeInsets.only(bottom: 5, left: 10, right: 10),
      child: Text(
        postTitle == null ? "" : postTitle,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 10),
          showBlueTik ? const BlueTik() : const SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt == null ? "" : publishedAt),
          const SizedBox(width: 5),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
        onPressed: () {},
      ),
    );
  }
}
