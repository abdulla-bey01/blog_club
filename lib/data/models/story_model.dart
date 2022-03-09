import '/data/models/base_model.dart';

class StoryModel extends BaseModel {
  final String ownerFullname;
  final String ownerImageUrl;
  final String imageUrl;
  final String content;
  final String title;
  StoryModel({
    required dynamic id,
    required this.title,
    required this.content,
    required this.ownerFullname,
    required this.ownerImageUrl,
    required this.imageUrl,
  }) : super(id);
}
