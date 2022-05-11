import 'package:arquiteturasoftware/app/controllers/app_controller.dart';
import 'package:flutter/material.dart';

class CustomSwitchWidget extends StatelessWidget {
  const CustomSwitchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Switch(
      value: AppController.instance.themeSwitch.value,
      onChanged: (value) {
        AppController.instance.changeTheme(value);
      },
    ));
  }
}
