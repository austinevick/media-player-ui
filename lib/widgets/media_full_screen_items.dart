import 'package:flutter/material.dart';

import 'media_button.dart';

class MediaFullScreenItems extends StatelessWidget {
  const MediaFullScreenItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down)),
            Text('Playing Now'),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          ],
        ),
        Container(
          height: 200,
          width: 200,
          color: Colors.red,
        ),
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
        ),
        Slider(value: 0.5, onChanged: (v) {})
      ],
    );
  }
}
