import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
        home:const HomeActivity()
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App "),
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          shadowColor: Color.fromRGBO(107, 139, 213, 1.0),
          color: Color.fromRGBO(39, 78, 182, 1.0),
          elevation: 80,
          child: SizedBox(
            width: 200,
            height: 200,
            child: Center(child: Text('This is card'),),
          ),
        ),
        
      ),

    );
  }
}