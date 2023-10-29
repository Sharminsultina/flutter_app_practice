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
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity,60)

    );


    return Scaffold(
      appBar: AppBar(
        title: Text("My App "),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(10),child:TextField(decoration: InputDecoration(border:OutlineInputBorder(),labelText: 'first name')),),
          Padding(padding: EdgeInsets.all(10),child:TextField(decoration: InputDecoration(border:OutlineInputBorder(),labelText: 'Lastame')),),
          Padding(padding: EdgeInsets.all(10),child:TextField(decoration: InputDecoration(border:OutlineInputBorder(),labelText: 'Email address')),),
          Padding(padding: EdgeInsets.all(10),child:ElevatedButton(onPressed: (){},child: Text('Submit'),style: buttonStyle,),)
        ],
      ),

    );

  }


}
