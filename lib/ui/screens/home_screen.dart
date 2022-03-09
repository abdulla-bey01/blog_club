import '/ui/theming/theme_controller.dart';
import '/ui/view-models/home_screen_view_model.dart';
import '/ui/widgets/articles.dart';
import '/ui/widgets/categories.dart';
import '/ui/widgets/stories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const route = '/home-page';

  @override
  Widget build(BuildContext context) {
    final _themeController = Get.put(ThemeController());
    final _theme = _themeController.theme;

    final _homePageViewModel = Get.put(HomeScreenViewModel());

    return Obx(
      () {
        return Scaffold(
          backgroundColor: _theme.mainColor,
          appBar: AppBar(
            backgroundColor: _theme.mainColor,
            title: Text(
              'Hi, ${_homePageViewModel.user.name}',
              style: _theme.px18w400_45,
            ),
            shadowColor: Colors.transparent,
            centerTitle: false,
            actions: [
              SizedBox(
                width: 50.0,
                height: 50.0,
                child: Stack(
                  children: [
                    const Center(
                      child: Icon(
                        Icons.notifications_outlined,
                        color: Colors.black,
                      ),
                    ),
                    Positioned(
                      top: 16,
                      left: 25,
                      child: Container(
                        height: 8,
                        width: 8,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore today’s',
                    style: _theme.px24w800_13,
                  ),
                  const SizedBox(height: 20.0),
                  const Stories(),
                  const SizedBox(height: 30.0),
                  const Categories(),
                  const SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Latest news',
                        style: _theme.px20w800_13,
                      ),
                      Text(
                        'More',
                        style: _theme.px14w500_55,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const Articles(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
