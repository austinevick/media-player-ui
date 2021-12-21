import 'package:flutter/material.dart';

import 'media_button.dart';

class MediaMiniScreenItems extends StatelessWidget {
  const MediaMiniScreenItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        const SizedBox(height: 4),
        Container(height: 4, width: 50, color: Colors.white54),
        Text(
          'currentItem',
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
        const Text(
          'Song title',
          style: TextStyle(color: Colors.grey),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MediaButtons(() {}, Icons.skip_previous),
            MediaButtons(() {}, Icons.play_arrow),
            MediaButtons(() {}, Icons.skip_next),
          ],
        )
      ],
    ));
  }
}
