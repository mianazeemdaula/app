import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Item {
  final IconData icon;
  final Color color;
  final String title;
  final String subTitle;
  Item(this.icon, this.color, this.title, this.subTitle);
}

class Design2Page extends StatelessWidget {
  Design2Page({Key? key}) : super(key: key);

  List<Item> items = [
    Item(Icons.ac_unit_rounded, Colors.red, "My PDF", "PDF . 10Mb"),
    Item(Icons.access_alarms_rounded, Colors.blue, "Word Doc", "WOR . 10Mb"),
    Item(Icons.cloud_circle, Colors.green, "My COmputer", "XML . 10Mb"),
    Item(Icons.no_accounts, Colors.yellow, "XML", "ADA . 10Mb"),
    Item(Icons.usb_rounded, Colors.orange, "Kaleeem", "KMS . 10Mb"),
    Item(Icons.account_circle_outlined, Colors.purple, "Hurrah", "HIV . 10Mb"),
  ];

  List<String> names = ["Name sa", "namdaslj ", "alksdjf"];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.42,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 0.8,
              ),
              children: [
                for (int i = 0; i <= 5; i++)
                  Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Material(
                            color: items[i].color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Icon(
                                items[i].icon,
                                size: 35,
                                color: items[i].color.withGreen(50),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(items[i].title),
                      Text(
                        items[i].subTitle,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: Colors.blue),
                      ),
                    ],
                  )
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.42,
            child: GridView.builder(
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Material(
                          color: items[i].color,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Icon(
                              items[i].icon,
                              size: 35,
                              color: items[i].color.withGreen(50),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(items[i].title),
                    Text(
                      items[i].subTitle,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.blue),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
