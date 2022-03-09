import '/data/models/story_model.dart';

class UserAllStoryModel {
  final String ownerName;
  final String ownerSurname;
  String get ownetFullname => ownerName + ' ' + ownerSurname;
  final String ownerImageUrl;
  List<StoryModel> stories;
  StoryModel get first => stories.first;
  int get storyLentgh => stories.length;

  UserAllStoryModel({
    required this.ownerName,
    required this.ownerSurname,
    required this.ownerImageUrl,
    required this.stories,
  });
}
