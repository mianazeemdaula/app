import 'package:flutter/material.dart';

class StateFullPage extends StatefulWidget {
  const StateFullPage({Key? key}) : super(key: key);

  @override
  State<StateFullPage> createState() => _StateFullPageState();
}

class _StateFullPageState extends State<StateFullPage> {
  int count = 5;
  String value = "";
  bool switch_ = false;

  @override
  Widget build(BuildContext context) {
    print("Widget Building");
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter $count"),
            ElevatedButton(
              onPressed: () {
                count = count + 1;
                setState(() {});
              },
              child: Text('ADD TO COUNT'),
            ),
            ElevatedButton(
              onPressed: () {
                count = count - 1;
                setState(() {});
              },
              child: Text('DECREASE TO COUNT'),
            ),
            TextFormField(
              onChanged: (String? v) {
                value = v!;
                setState(() {});
              },
            ),
            Text(value),
            Switch(
              value: switch_,
              onChanged: (c) {
                switch_ = c;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
