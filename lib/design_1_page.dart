import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'component/stat_card.dart';
import 'component/task_tile.dart';

class DesignOnePage extends StatelessWidget {
  const DesignOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: size.width,
              height: size.height * 0.20,
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    child: Image.asset(
                      'assets/images/education.jpg',
                      width: size.width * 0.4,
                    ),
                  ),
                  Positioned(
                    left: 15,
                    top: 50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hi Samantha',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text('Here are your projects'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * 0.35,
              padding: const EdgeInsets.only(left: 15),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 1; i <= 10; i++)
                    StatCard(
                      size: size,
                      i: i,
                      icon: FontAwesomeIcons.airbnb,
                      line1: 'Cryptocurreny',
                      line2: 'Jamshaid Zindabad',
                      line3: '12 Jobs',
                    )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: size.width,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xFFecf0f8),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Personal Tasks',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    TaskTile(
                      dotColor: Colors.red,
                      icon: FontAwesomeIcons.video,
                      title: 'NDA reveiw for website project',
                      subTitle: 'Today - 10PM',
                    ),
                    SizedBox(height: 10),
                    TaskTile(
                      dotColor: Colors.blue,
                      icon: FontAwesomeIcons.at,
                      title: 'Email Reply for Green Project',
                      subTitle: 'Tomorrow - 10PM',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
