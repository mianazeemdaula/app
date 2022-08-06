import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StreamPage extends StatefulWidget {
  StreamPage({Key? key}) : super(key: key);

  @override
  State<StreamPage> createState() => _StreamPageState();
}

class _StreamPageState extends State<StreamPage> {
  StreamController<String> myStream = StreamController<String>();

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      myStream.add(DateTime.now().toString().substring(10, 19));
    });
  }

  @override
  Widget build(BuildContext context) {
    print("Build Screen");
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream Page'),
      ),
      body: StreamBuilder<String>(
        stream: myStream.stream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Text(
                snapshot.data.toString(),
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
