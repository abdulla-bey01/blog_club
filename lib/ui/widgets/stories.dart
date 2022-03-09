import '/ui/view-models/home_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'story_item.dart';

class Stories extends StatelessWidget {
  const Stories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _sizes = MediaQuery.of(context).size;
    final _width = _sizes.width;
    final HomeScreenViewModel _homePageViewModel = Get.find();
    return SizedBox(
      height: 90.0,
      width: _width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _homePageViewModel.userStories.length,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: StoryItem(story: _homePageViewModel.userStories[index]),
          );
        },
      ),
    );
  }
}
