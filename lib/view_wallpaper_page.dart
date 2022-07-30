import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ViewWallpaperPage extends StatelessWidget {
  ViewWallpaperPage({Key? key, required this.paths, required this.index})
      : super(key: key);

  final List<String> paths;
  final int index;
  late PageController pageController;

  @override
  Widget build(BuildContext context) {
    pageController = PageController(initialPage: index);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: paths.length,
        itemBuilder: (context, i) {
          return Container(
            width: size.width,
            height: size.height,
            color: Colors.amber,
            child: Image.asset(
              paths[i],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
