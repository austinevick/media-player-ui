import 'dart:io';

import 'package:flutter/material.dart';
import 'package:media_player_ui/data/media.dart';
import 'package:media_player_ui/widgets/media_button.dart';
import 'package:media_player_ui/widgets/media_full_screen_items.dart';
import 'package:media_player_ui/widgets/media_mini_screen_items.dart';
import 'package:path_provider/path_provider.dart';

const Color defaultColor = Color(0xff1f164b);

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future loadMediaPath() async {
    Directory dir = Directory('/storage/emulated/0');
    var data = dir.list(recursive: false).toList();
  }

  String currentItem = '';
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: ListView(
                  children: List.generate(
                      names.length,
                      (i) => MaterialButton(
                            onPressed: () {
                              setState(() {
                                currentItem = names[i].name!;
                                isExpanded = true;
                              });
                            },
                            child: SizedBox(
                              height: 80,
                              child: Card(
                                color: Colors.red,
                                child: Center(child: Text(names[i].name!)),
                              ),
                            ),
                          )),
                ),
              ),
            ],
          ),
          bottomSheet: GestureDetector(
            onTap: () => setState(() => isExpanded = !isExpanded),
            child: AnimatedContainer(
                decoration: BoxDecoration(
                    color: const Color(0xff1f164b),
                    borderRadius: isExpanded
                        ? null
                        : const BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25))),
                duration: const Duration(milliseconds: 800),
                height: isExpanded ? MediaQuery.of(context).size.height : 110,
                width: double.infinity,
                child: isExpanded
                    ? MediaFullScreenItems()
                    : MediaMiniScreenItems()),
          )),
    );
  }
}
