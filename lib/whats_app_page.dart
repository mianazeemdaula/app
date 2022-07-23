import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WhatsAppPage extends StatelessWidget {
  const WhatsAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Call',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                for (int i = 1; i <= 100; i++)
                  ListTile(
                    leading: CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                          'https://m.media-amazon.com/images/M/MV5BZWUwNmEwZTUtYzMxMS00ODg5LTlmYjItMGU4ZjNmN2Q1NjkwXkEyXkFqcGdeQXVyMTM1MjAxMDc3._V1_UY317_CR5,0,214,317_AL_.jpg'),
                    ),
                    title: Text('Name of the User $i'),
                    subtitle: Text("Status of the user $i"),
                    trailing: Text('09:14 PM'),
                  )
              ],
            ),
            Text('Status View'),
            Text('Calls View'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.message),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.portable_wifi_off),
              label: 'Wifi',
            ),
          ],
          onTap: (int? i) {
            print(i);
          },
        ),
      ),
    );
  }
}
