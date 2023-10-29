import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
        theme: ThemeData(primaryColor: Colors.cyan),
        darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home: HomeActivity()
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))

    );
  }


  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle= ElevatedButton.styleFrom(
        padding: EdgeInsets.all(25),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.indigo,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(55))
      )

    );

    return Scaffold(
      appBar: AppBar(
        title: Text("My App "),

      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: (){MySnackBar('Text button', context);}, child: Text('Text Button')),
          ElevatedButton(onPressed: (){MySnackBar('Eleveted button', context);},child: Text('Eleveted Button'),style: buttonStyle,),
          OutlinedButton(onPressed: (){MySnackBar('Text button', context);},child: Text('Text Button')),

        ],
      ),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     Container(height: 100,width: 100,child: Image.network('https://www.codeproject.com/KB/GDI-plus/ImageProcessing2/img.jpg')),
      //   ],
      // ),

    );

  }


}
