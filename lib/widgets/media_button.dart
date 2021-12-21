import 'package:flutter/material.dart';

class MediaButtons extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Color? color;

  const MediaButtons(this.onPressed, this.icon, {Key? key, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 23,
            backgroundColor: color,
            child: Icon(icon),
          )),
    );
  }
}
