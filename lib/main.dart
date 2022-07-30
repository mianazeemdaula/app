import 'package:app/design_1_page.dart';
import 'package:app/design_2_page.dart';
import 'package:app/wallpaper_grid_page.dart';
import 'package:app/whats_app_page.dart';
import 'package:flutter/material.dart';
import 'signin_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'xyz',
      ),
      themeMode: ThemeMode.dark,
      home: WallpaperGridPage(),
    );
  }
}
