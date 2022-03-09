import '/data/models/user_all_story.dart';
import '/ui/view-models/abstraction/initializable.dart';
import 'package:get/get.dart';

class StoryScreenViewModel extends RxController implements Initialazible {
  late UserAllStoryModel _userStory;
  UserAllStoryModel get userStory => _userStory;

  late RxInt _currentStoryIndex;
  int get currentStoryIndex => _currentStoryIndex.value;
  void updateStoryIndex({int? to}) {
    if (to == null) {
      if (_currentStoryIndex < userStory.storyLentgh - 1) {
        _currentStoryIndex.value += 1;
      }
    } else {
      _currentStoryIndex.value = to;
    }
  }

  @override
  late bool inited = false;
  @override
  void init({bool force = false}) {
    if (inited && !force) return;
    _currentStoryIndex = 0.obs;
    inited = true;
  }

  StoryScreenViewModel(UserAllStoryModel userStory) {
    _userStory = userStory;
    init();
  }
}
