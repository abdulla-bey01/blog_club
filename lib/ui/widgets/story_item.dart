import 'package:blog_club/data/models/user_all_story.dart';
import 'package:blog_club/ui/screens/story_screen.dart';
import 'package:blog_club/ui/view-models/story_screen_view_model.dart';
import '/ui/theming/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
    required this.story,
  }) : super(key: key);
  final UserAllStoryModel story;

  @override
  Widget build(BuildContext context) {
    final ThemeController _themeController = Get.find();
    final _theme = _themeController.theme;
    return InkWell(
      onTap: () {
        Get.to(
          StoryScreen(
            storyScreenViewModel: StoryScreenViewModel(story),
          ),
        );
      },
      child: SizedBox(
        height: 90.0,
        width: 68.0,
        child: Column(
          children: [
            Container(
              height: 68.0,
              width: 68.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: _theme.secondaryColor,
                  width: 1.6,
                ),
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 66.0,
                  width: 66.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    image: DecorationImage(
                      image: NetworkImage(story.ownerImageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              story.ownerName,
              style: _theme.px12w400_45,
            ),
          ],
        ),
      ),
    );
  }
}
