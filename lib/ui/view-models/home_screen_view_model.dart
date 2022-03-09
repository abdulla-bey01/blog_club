import 'package:blog_club/data/models/user_all_story.dart';

import '/data/models/article_model.dart';
import '/data/models/category_model.dart';
import '/data/models/story_model.dart';
import '/data/models/user_model.dart';
import '/ui/view-models/abstraction/initializable.dart';
import 'package:get/get.dart';

class HomeScreenViewModel extends RxController implements Initialazible {
  late Rx<UserModel> _user;
  UserModel get user => _user.value;

  late bool _hasNotification;
  bool get hasNotification => _hasNotification;

  late RxList<CategoryModel> _categories;
  List<CategoryModel> get categories => _categories;

  late RxList<UserAllStoryModel> _userStories;
  List<UserAllStoryModel> get userStories => _userStories;

  late RxList<ArticleModel> _articles;
  List<ArticleModel> get articles => _articles;

  @override
  bool inited = false;
  @override
  void init({bool force = false}) {
    if (inited && !force) return;
    _user = UserModel(name: 'Saleh', surname: 'Abdullabayli').obs;

    _categories = <CategoryModel>[
      CategoryModel(
          id: 1,
          title: 'Technology',
          imageUrl:
              'https://unsplash.com/photos/MxVkWPiJALs/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MTJ8fHRlY2hub2xvZ3l8ZW58MHx8fHwxNjQ2Nzk4NDQ1&force=true'),
      CategoryModel(
          id: 2,
          title: 'Adventure',
          imageUrl:
              'https://unsplash.com/photos/8--kuxbxuKU/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8NHx8YWR2ZW50dXJlfGVufDB8fHx8MTY0Njc5NzA1Mw&force=true'),
      CategoryModel(
          id: 3,
          title: 'Music',
          imageUrl:
              'https://unsplash.com/photos/k3heD_KwH0A/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8OXx8bXVzaWN8ZW58MHx8fHwxNjQ2ODIyNzI3&force=true'),
    ].obs;

    _userStories = <UserAllStoryModel>[
      UserAllStoryModel(
        ownerName: 'Emilia',
        ownerSurname: 'Black',
        ownerImageUrl:
            'https://unsplash.com/photos/W7b3eDUb_2I/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8OHx8d29tYW58ZW58MHx8fHwxNjQ2Nzc0NzY1&force=true',
        stories: [
          StoryModel(
              id: 1,
              title: 'Do You Want To Live A Happy Life? Smile.',
              ownerImageUrl:
                  'https://unsplash.com/photos/W7b3eDUb_2I/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8OHx8d29tYW58ZW58MHx8fHwxNjQ2Nzc0NzY1&force=true',
              content:
                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
              imageUrl:
                  'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
              ownerFullname: 'Emilia'),
          StoryModel(
              id: 2,
              title: 'Do You Want To Live A Happy Life? Smile.',
              ownerImageUrl:
                  'https://unsplash.com/photos/WNoLnJo7tS8/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8NXx8bWFufGVufDB8fHx8MTY0NjgxOTM3OQ&force=true',
              content:
                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
              imageUrl:
                  'https://unsplash.com/photos/mEZ3PoFGs_k/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHklMjB3b21hbnxlbnwwfHx8fDE2NDY4MTM2NTk&force=true',
              ownerFullname: 'Richard'),
          StoryModel(
              id: 3,
              title: 'Do You Want To Live A Happy Life? Smile.',
              ownerImageUrl:
                  'https://unsplash.com/photos/d1UPkiFd04A/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8N3x8bWFufGVufDB8fHx8MTY0NjgxOTM3OQ&force=true',
              content:
                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
              imageUrl:
                  'https://unsplash.com/photos/n1B6ftPB5Eg/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MTF8fGhhcHB5JTIwd29tYW58ZW58MHx8fHwxNjQ2ODEzNjU5&force=true',
              ownerFullname: 'Lucas'),
          StoryModel(
              id: 4,
              title: 'Do You Want To Live A Happy Life? Smile.',
              ownerImageUrl:
                  'https://unsplash.com/photos/QS9ZX5UnS14/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MzZ8fHdvbWFufGVufDB8fHx8MTY0Njc3NDgxMA&force=true',
              content:
                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
              imageUrl:
                  'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
              ownerFullname: 'Jasmine'),
          StoryModel(
            id: 5,
            title: 'Do You Want To Live A Happy Life? Smile.',
            ownerImageUrl:
                'https://unsplash.com/photos/K84vnnzxmTQ/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MjB8fG1hbnxlbnwwfHx8fDE2NDY4MTkzNzk&force=true',
            content:
                'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
            imageUrl:
                'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
            ownerFullname: 'Edward',
          ),
        ],
      ),
      //
      UserAllStoryModel(
        ownerName: 'Richard',
        ownerSurname: 'Black',
        ownerImageUrl:
            'https://unsplash.com/photos/WNoLnJo7tS8/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8NXx8bWFufGVufDB8fHx8MTY0NjgxOTM3OQ&force=true',
        stories: [
          StoryModel(
              id: 1,
              title: 'Do You Want To Live A Happy Life? Smile.',
              ownerImageUrl:
                  'https://unsplash.com/photos/W7b3eDUb_2I/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8OHx8d29tYW58ZW58MHx8fHwxNjQ2Nzc0NzY1&force=true',
              content:
                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
              imageUrl:
                  'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
              ownerFullname: 'Emilia'),
          StoryModel(
              id: 2,
              title: 'Do You Want To Live A Happy Life? Smile.',
              ownerImageUrl:
                  'https://unsplash.com/photos/WNoLnJo7tS8/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8NXx8bWFufGVufDB8fHx8MTY0NjgxOTM3OQ&force=true',
              content:
                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
              imageUrl:
                  'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
              ownerFullname: 'Richard'),
          StoryModel(
              id: 3,
              title: 'Do You Want To Live A Happy Life? Smile.',
              ownerImageUrl:
                  'https://unsplash.com/photos/d1UPkiFd04A/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8N3x8bWFufGVufDB8fHx8MTY0NjgxOTM3OQ&force=true',
              content:
                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
              imageUrl:
                  'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
              ownerFullname: 'Lucas'),
          StoryModel(
              id: 4,
              title: 'Do You Want To Live A Happy Life? Smile.',
              ownerImageUrl:
                  'https://unsplash.com/photos/QS9ZX5UnS14/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MzZ8fHdvbWFufGVufDB8fHx8MTY0Njc3NDgxMA&force=true',
              content:
                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
              imageUrl:
                  'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
              ownerFullname: 'Jasmine'),
          StoryModel(
            id: 5,
            title: 'Do You Want To Live A Happy Life? Smile.',
            ownerImageUrl:
                'https://unsplash.com/photos/K84vnnzxmTQ/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MjB8fG1hbnxlbnwwfHx8fDE2NDY4MTkzNzk&force=true',
            content:
                'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
            imageUrl:
                'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
            ownerFullname: 'Edward',
          ),
        ],
      ),
      //
      UserAllStoryModel(
        ownerName: 'Lucas',
        ownerSurname: 'Red',
        ownerImageUrl:
            'https://unsplash.com/photos/d1UPkiFd04A/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8N3x8bWFufGVufDB8fHx8MTY0NjgxOTM3OQ&force=true',
        stories: [
          StoryModel(
              id: 1,
              title: 'Do You Want To Live A Happy Life? Smile.',
              ownerImageUrl:
                  'https://unsplash.com/photos/W7b3eDUb_2I/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8OHx8d29tYW58ZW58MHx8fHwxNjQ2Nzc0NzY1&force=true',
              content:
                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
              imageUrl:
                  'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
              ownerFullname: 'Emilia'),
          StoryModel(
              id: 2,
              title: 'Do You Want To Live A Happy Life? Smile.',
              ownerImageUrl:
                  'https://unsplash.com/photos/d1UPkiFd04A/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8N3x8bWFufGVufDB8fHx8MTY0NjgxOTM3OQ&force=true',
              content:
                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
              imageUrl:
                  'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
              ownerFullname: 'Richard'),
          StoryModel(
              id: 3,
              title: 'Do You Want To Live A Happy Life? Smile.',
              ownerImageUrl:
                  'https://unsplash.com/photos/d1UPkiFd04A/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8N3x8bWFufGVufDB8fHx8MTY0NjgxOTM3OQ&force=true',
              content:
                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
              imageUrl:
                  'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
              ownerFullname: 'Lucas'),
          StoryModel(
              id: 4,
              title: 'Do You Want To Live A Happy Life? Smile.',
              ownerImageUrl:
                  'https://unsplash.com/photos/QS9ZX5UnS14/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MzZ8fHdvbWFufGVufDB8fHx8MTY0Njc3NDgxMA&force=true',
              content:
                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
              imageUrl:
                  'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
              ownerFullname: 'Jasmine'),
          StoryModel(
            id: 5,
            title: 'Do You Want To Live A Happy Life? Smile.',
            ownerImageUrl:
                'https://unsplash.com/photos/K84vnnzxmTQ/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MjB8fG1hbnxlbnwwfHx8fDE2NDY4MTkzNzk&force=true',
            content:
                'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
            imageUrl:
                'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
            ownerFullname: 'Edward',
          ),
        ],
      ),
      //
      UserAllStoryModel(
        ownerName: 'Jasmine',
        ownerSurname: 'Joe',
        ownerImageUrl:
            'https://unsplash.com/photos/QS9ZX5UnS14/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MzZ8fHdvbWFufGVufDB8fHx8MTY0Njc3NDgxMA&force=true',
        stories: [
          StoryModel(
              id: 1,
              title: 'Do You Want To Live A Happy Life? Smile.',
              ownerImageUrl:
                  'https://unsplash.com/photos/W7b3eDUb_2I/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8OHx8d29tYW58ZW58MHx8fHwxNjQ2Nzc0NzY1&force=true',
              content:
                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
              imageUrl:
                  'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
              ownerFullname: 'Emilia'),
          StoryModel(
              id: 2,
              title: 'Do You Want To Live A Happy Life? Smile.',
              ownerImageUrl:
                  'https://unsplash.com/photos/d1UPkiFd04A/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8N3x8bWFufGVufDB8fHx8MTY0NjgxOTM3OQ&force=true',
              content:
                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
              imageUrl:
                  'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
              ownerFullname: 'Richard'),
          StoryModel(
              id: 3,
              title: 'Do You Want To Live A Happy Life? Smile.',
              ownerImageUrl:
                  'https://unsplash.com/photos/d1UPkiFd04A/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8N3x8bWFufGVufDB8fHx8MTY0NjgxOTM3OQ&force=true',
              content:
                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
              imageUrl:
                  'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
              ownerFullname: 'Lucas'),
          StoryModel(
              id: 4,
              title: 'Do You Want To Live A Happy Life? Smile.',
              ownerImageUrl:
                  'https://unsplash.com/photos/QS9ZX5UnS14/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MzZ8fHdvbWFufGVufDB8fHx8MTY0Njc3NDgxMA&force=true',
              content:
                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
              imageUrl:
                  'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
              ownerFullname: 'Jasmine'),
          StoryModel(
            id: 5,
            title: 'Do You Want To Live A Happy Life? Smile.',
            ownerImageUrl:
                'https://unsplash.com/photos/K84vnnzxmTQ/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MjB8fG1hbnxlbnwwfHx8fDE2NDY4MTkzNzk&force=true',
            content:
                'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
            imageUrl:
                'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
            ownerFullname: 'Edward',
          ),
        ],
      ),
      //
      UserAllStoryModel(
        ownerName: 'Edward',
        ownerSurname: 'Abdollah',
        ownerImageUrl:
            'https://unsplash.com/photos/K84vnnzxmTQ/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MjB8fG1hbnxlbnwwfHx8fDE2NDY4MTkzNzk&force=true',
        stories: [
          StoryModel(
              id: 1,
              title: 'Do You Want To Live A Happy Life? Smile.',
              ownerImageUrl:
                  'https://unsplash.com/photos/W7b3eDUb_2I/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8OHx8d29tYW58ZW58MHx8fHwxNjQ2Nzc0NzY1&force=true',
              content:
                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
              imageUrl:
                  'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
              ownerFullname: 'Emilia'),
          StoryModel(
              id: 2,
              title: 'Do You Want To Live A Happy Life? Smile.',
              ownerImageUrl:
                  'https://unsplash.com/photos/d1UPkiFd04A/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8N3x8bWFufGVufDB8fHx8MTY0NjgxOTM3OQ&force=true',
              content:
                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
              imageUrl:
                  'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
              ownerFullname: 'Richard'),
          StoryModel(
              id: 3,
              title: 'Do You Want To Live A Happy Life? Smile.',
              ownerImageUrl:
                  'https://unsplash.com/photos/d1UPkiFd04A/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8N3x8bWFufGVufDB8fHx8MTY0NjgxOTM3OQ&force=true',
              content:
                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
              imageUrl:
                  'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
              ownerFullname: 'Lucas'),
          StoryModel(
              id: 4,
              title: 'Do You Want To Live A Happy Life? Smile.',
              ownerImageUrl:
                  'https://unsplash.com/photos/QS9ZX5UnS14/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MzZ8fHdvbWFufGVufDB8fHx8MTY0Njc3NDgxMA&force=true',
              content:
                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
              imageUrl:
                  'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
              ownerFullname: 'Jasmine'),
          StoryModel(
            id: 5,
            title: 'Do You Want To Live A Happy Life? Smile.',
            ownerImageUrl:
                'https://unsplash.com/photos/K84vnnzxmTQ/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MjB8fG1hbnxlbnwwfHx8fDE2NDY4MTkzNzk&force=true',
            content:
                'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
            imageUrl:
                'https://unsplash.com/photos/oTweoxMKdkA/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8aGFwcHl8ZW58MHx8fHwxNjQ2ODExODYw&force=true',
            ownerFullname: 'Edward',
          ),
        ],
      ),
    ].obs;

    _articles = <ArticleModel>[
      ArticleModel(
        id: 1,
        category: CategoryModel(id: 1, title: 'title', imageUrl: ''),
        title: 'BIG DATA',
        content: 'Why Big Data Needs Thick Data?',
        imageUrl:
            'https://unsplash.com/photos/iar-afB0QQw/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MTJ8fGJpZyUyMGRhdGF8ZW58MHx8fHwxNjQ2ODIxNzM0&force=true',
      ),
      ArticleModel(
        id: 2,
        category: CategoryModel(id: 1, title: 'title', imageUrl: ''),
        title: 'BIG DATA',
        content: 'Why Big Data Needs Thick Data?',
        imageUrl:
            'https://unsplash.com/photos/iar-afB0QQw/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MTJ8fGJpZyUyMGRhdGF8ZW58MHx8fHwxNjQ2ODIxNzM0&force=true',
      ),
      ArticleModel(
        id: 3,
        category: CategoryModel(id: 1, title: 'title', imageUrl: ''),
        title: 'BIG DATA',
        content: 'Why Big Data Needs Thick Data?',
        imageUrl:
            'https://unsplash.com/photos/iar-afB0QQw/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MTJ8fGJpZyUyMGRhdGF8ZW58MHx8fHwxNjQ2ODIxNzM0&force=true',
      ),
      //
    ].obs;

    inited = true;
  }

  HomeScreenViewModel() {
    init();
  }
}
