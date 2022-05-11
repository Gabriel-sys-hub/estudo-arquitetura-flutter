import 'package:arquiteturasoftware/app/controllers/app_controller.dart';
import 'package:arquiteturasoftware/app/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: AppController.instance.themeSwitch,
        builder: (context, value, child) {
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              brightness: value ? Brightness.dark : Brightness.light,
            ),
            home: const HomePage(),
          );
        });
  }
}
