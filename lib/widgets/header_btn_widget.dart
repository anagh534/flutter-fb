import 'package:flutter/material.dart';

Widget headerBtn({
  required String buttonText,
  required IconData buttonIcon,
  required void Function() buttonAction,
  required Color btnColor,
}) {
  return TextButton.icon(
    onPressed: buttonAction,
    icon: Icon(
      buttonIcon,
      color: btnColor,
    ),
    label: Text(
      buttonText,
      style: const TextStyle(color: Colors.black),
    ),
  );
}
