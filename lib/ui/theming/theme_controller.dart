import '/ui/theming/dark_theme.dart';
import '/ui/theming/light_theme.dart';
import '/ui/theming/theme_mode.dart';
import '/ui/theming/theme_model.dart';
import 'package:get/get.dart';

class ThemeController extends RxController {
  var mode = ThemeMode.dark.obs;
  ThemeModel get theme => mode.value == ThemeMode.dark ? darkTheme : lightTheme;
  void toggleTheme() {
    mode.value =
        mode.value == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
  }
}
