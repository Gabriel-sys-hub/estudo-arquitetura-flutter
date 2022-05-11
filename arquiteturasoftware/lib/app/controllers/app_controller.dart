import 'package:flutter/cupertino.dart';

class AppController {
  static final AppController instance = AppController();

  final themeSwitch = ValueNotifier<bool>(false);

  changeTheme(bool value) {
    themeSwitch.value = !themeSwitch.value;
  }
}
