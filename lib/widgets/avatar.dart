import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;
  final double height;
  final double width;

  const Avatar({
    super.key,
    required this.displayImage,
    required this.displayStatus,
    this.displayBorder = false,
    this.width = 50,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;

    if (displayStatus) {
      statusIndicator = Positioned(
        bottom: 0,
        right: 1,
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
              color: Colors.greenAccent,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              )),
        ),
      );
    } else {
      statusIndicator = const SizedBox();
    }

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder
                ? Border.all(color: Colors.blueAccent, width: 3)
                : const Border(),
          ),
          padding: const EdgeInsets.only(left: 4, right: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
        ),
        statusIndicator
      ],
    );
  }
}
