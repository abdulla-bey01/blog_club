import '/ui/view-models/home_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'article_item.dart';

class Articles extends StatelessWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeScreenViewModel _homePageViewModel = Get.find();

    return Column(
      children: _homePageViewModel.articles.map((article) {
        return Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: ArticleItem(article: article),
        );
      }).toList(),
    );
  }
}
