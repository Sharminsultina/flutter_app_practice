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
        title: Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Activity1()));
          },child: Text('Go activity1')),

          ElevatedButton(onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Activity2()));
          },child: Text('Go activity2 ')),
    ],
      ),

    );
  }
}
class Activity1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity1"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Activity1()));
          },child: Text('Go activity2'),),
        ),

    );
  }
}
class Activity2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity2"),
      ),

    );
  }
}