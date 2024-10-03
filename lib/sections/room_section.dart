import 'package:fb/assets.dart';
import 'package:fb/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: [
          createRoomBtn(),
          Avatar(
            displayImage: dq,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mohanlal,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mamooty,
            displayStatus: true,
          ),
          Avatar(
            displayImage: tovino,
            displayStatus: true,
          ),
          Avatar(
            displayImage: nazriya,
            displayStatus: true,
          ),
          Avatar(
            displayImage: sunny,
            displayStatus: true,
          ),
          Avatar(
            displayImage: rashmika,
            displayStatus: true,
          ),
        ],
      ),
    );
  }

  Widget createRoomBtn() {
    return Container(
      padding: const EdgeInsets.only(right: 5, left: 5),
      child: OutlinedButton.icon(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: const Text(
          "Create\nRoom",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
