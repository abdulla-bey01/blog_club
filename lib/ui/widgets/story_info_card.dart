import 'dart:ui';

import 'package:blog_club/data/models/story_model.dart';
import 'package:blog_club/ui/theming/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryInfoCard extends StatelessWidget {
  const StoryInfoCard({
    Key? key,
    required this.story,
  }) : super(key: key);

  final StoryModel story;

  @override
  Widget build(BuildContext context) {
    final ThemeController _themeController = Get.find();
    final _theme = _themeController.theme;
    return Container(
      width: 295,
      height: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
          child: Container(
            color: Colors.black.withOpacity(0.1),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      story.title, //'Do You Want To Live A Happy Life? Smile.',
                      style: _theme.px18w800_255,
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      story
                          .content, //'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
                      style: _theme.px14w400_235,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
