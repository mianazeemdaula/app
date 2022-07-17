import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: size.height * 0.3,
              color: Colors.blue,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  const CircleAvatar(
                    minRadius: 80,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Azeem Rehan'.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 1; i <= 3; i++)
                            Expanded(
                              child: Column(
                                children: const [
                                  Text('Photos'),
                                  SizedBox(height: 10),
                                  Text(
                                    '160',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ],
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.email,
                              color: Colors.red,
                            ),
                            SizedBox(width: 10),
                            Text('info@gmail.com'),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            Icon(
                              Icons.phone,
                              color: Colors.blue,
                            ),
                            SizedBox(width: 10),
                            Text('+923065656565'),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            Icon(
                              Icons.group,
                              color: Colors.blue,
                            ),
                            SizedBox(width: 10),
                            Text('Add to Group'),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            Icon(
                              Icons.comment,
                              color: Colors.blue,
                            ),
                            SizedBox(width: 10),
                            Text('Show all comments'),
                          ],
                        )
                      ],
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
