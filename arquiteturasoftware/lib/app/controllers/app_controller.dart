import 'package:arquiteturasoftware/app/models/appconfig_model.dart';
import 'package:flutter/cupertino.dart';

class AppController {
  static final AppController instance = AppController();

  final AppConfigModel config = AppConfigModel();
  bool get isDark => config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => config.themeSwitch;

  changeTheme(bool value) {
    config.themeSwitch.value = config.themeSwitch.value;
  }
}
