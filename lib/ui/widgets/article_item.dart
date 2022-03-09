import '/data/models/article_model.dart';
import '/ui/theming/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({
    Key? key,
    required this.article,
  }) : super(key: key);

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    final ThemeController _themeController = Get.find();
    final _theme = _themeController.theme;
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        color: _theme.c255_255_250_1,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              image: DecorationImage(
                image: NetworkImage(
                  article.imageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 20.0),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                article.title,
                style: _theme.px14w800_55,
              ),
              Text(
                article.content,
                style: _theme.px14w500_13,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
