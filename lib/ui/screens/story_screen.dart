import 'dart:ui';

import 'package:blog_club/ui/theming/theme_controller.dart';
import 'package:blog_club/ui/theming/theme_model.dart';
import 'package:blog_club/ui/view-models/story_screen_view_model.dart';
import 'package:blog_club/ui/widgets/story_info_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({Key? key, this.storyScreenViewModel}) : super(key: key);
  static const route = '/story-screen';
  final StoryScreenViewModel? storyScreenViewModel;

  @override
  Widget build(BuildContext context) {
    final ThemeController _themeController = Get.find();
    final _theme = _themeController.theme;
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Obx(() {
      return Scaffold(
        backgroundColor: _theme.c55_106_237_1,
        body: Column(children: [
          SizedBox(
            height: _height - 125.0,
            child: InkWell(
              onTap: () => storyScreenViewModel!.updateStoryIndex(),
              child: Stack(
                children: [
                  IndexedStack(
                    index: storyScreenViewModel!.currentStoryIndex,
                    children:
                        storyScreenViewModel!.userStory.stories.map((story) {
                      return Stack(
                        children: [
                          Container(
                            height: _height - 125.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(24.0),
                                bottomRight: Radius.circular(24.0),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  story.imageUrl,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 24.0),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: StoryInfoCard(
                                story: story,
                              ),
                            ),
                          )
                        ],
                      );
                    }).toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: SizedBox(
                              width: _width - 16,
                              height: 10,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: storyScreenViewModel!
                                    .userStory.stories
                                    .map((e) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 2.0),
                                    child: Container(
                                      width: (_width - 16) /
                                              storyScreenViewModel!
                                                  .userStory.storyLentgh -
                                          (storyScreenViewModel!
                                                  .userStory.storyLentgh *
                                              2.0),
                                      height: 4,
                                      decoration: BoxDecoration(
                                        color: _theme.c255_255_255_029,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0, right: 16.0, top: 24.0),
                            child: SizedBox(
                              height: 50.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 50.0,
                                        width: 50.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              storyScreenViewModel!
                                                  .userStory.ownerImageUrl,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 16.0),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            storyScreenViewModel!
                                                .userStory.ownetFullname,
                                            style: _theme.px16w800_255,
                                          ),
                                          Text(
                                            '4 min ago',
                                            style: _theme.px12w400_255,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.close,
                                    size: 32,
                                    color: _theme.c255_255_250_1,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 125.0,
            width: double.infinity,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.keyboard_arrow_up,
                  color: _theme.c255_255_250_1,
                ),
                Container(
                  width: 120,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: _theme.c255_255_250_1,
                  ),
                  child: Center(
                    child: Text(
                      'Read More',
                      style: _theme.px14w800_55,
                    ),
                  ),
                ),
              ],
            )),
          ),
        ]),
      );
    });
  }
}
