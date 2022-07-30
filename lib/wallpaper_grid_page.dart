import 'package:app/view_wallpaper_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WallpaperGridPage extends StatelessWidget {
  WallpaperGridPage({Key? key}) : super(key: key);

  List<String> images = [
    "assets/images/01.jpeg",
    "assets/images/02.jpeg",
    "assets/images/03.jpeg",
    "assets/images/04.jpeg",
    "assets/images/05.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: [
          for (int i = 0; i < images.length; i++)
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (c) {
                  return ViewWallpaperPage(
                    paths: images,
                    index: i,
                  );
                }));
              },
              child: Image.asset(
                images[i],
                fit: BoxFit.cover,
              ),
            )
        ],
      ),
    );
  }
}
