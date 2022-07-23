import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              padding: const EdgeInsets.only(left: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 1; i <= 10; i++)
                    Container(
                      width: size.width / 2.5,
                      margin:
                          const EdgeInsets.only(right: 20, top: 15, bottom: 15),
                      decoration: BoxDecoration(
                        color: i.isEven ? Colors.blue : Colors.orange,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: i.isEven
                                ? Colors.blue.withOpacity(0.5)
                                : Colors.orange.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: const Offset(0, 5),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              FontAwesomeIcons.chartPie,
                              size: 60,
                              color: i.isEven
                                  ? Colors.blue.shade900
                                  : Colors.orange.shade900,
                            ),
                            const SizedBox(height: 30),
                            const Text(
                              'Cryptocurreny',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Landing Page',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              '12 Tasks',
                              style: TextStyle(color: Colors.white60),
                            ),
                            const SizedBox(height: 15),
                          ],
                        ),
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
