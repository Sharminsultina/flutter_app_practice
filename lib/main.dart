import 'package:flutter/material.dart';
import 'package:flutter_app_practice/Screen/ProductCreateScreen.dart';
import 'package:flutter_app_practice/Screen/ProductGridViewScreen.dart';

import 'Screen/ProductCreateScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CRUD APP',
      home: ProductGridViewScreen()
    );

  }
}
