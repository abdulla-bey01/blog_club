import 'package:blog_club/ui/screens/story_screen.dart';
import 'package:get/get.dart';

import '/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BlogClub extends StatelessWidget {
  const BlogClub({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BlogClub',
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.route: (_) => const HomeScreen(),
        StoryScreen.route: (_) => const StoryScreen(),
      },
      initialRoute: HomeScreen.route,
    );
  }
}
