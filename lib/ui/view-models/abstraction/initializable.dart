
import 'package:flutter/foundation.dart';

abstract class Initialazible {
  @protected
  late bool inited = false;
  void init({bool force = false});
}
