import 'package:flutter/material.dart';

void main() {
  // give me some widget
  runApp(MyApp());
}

// Hot reload => ctl + s
// Hot restart => ctl + shift + \

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
      title: 'Ostad app',
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Scrollbar(
          thickness: 20,
          radius: Radius.circular(10),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            children: [
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.access_alarms_rounded),
              Icon(Icons.accessibility_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.accessible_outlined),
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.account_circle_outlined),
              Icon(Icons.add_a_photo_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.adb_rounded),
              Icon(Icons.add_card_outlined),
              Icon(Icons.adb_rounded),
              Icon(Icons.add_circle),
            ],
          )
      ),
    );
  }
}
