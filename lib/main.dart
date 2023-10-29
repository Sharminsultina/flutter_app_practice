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

  MyAlertDialog(context){
    return showDialog(
      context: context,
      builder: (BuildContext context){
        return Expanded(
            child: AlertDialog(
              title: Text('Alart !'),
              content: Text('Do you want to delete'),
              actions: [
                TextButton(onPressed:(){
                  MySnackBar('Delete success',context);
                  Navigator.of(context).pop();
                  }, child: Text('yes')),
                TextButton(onPressed:(){Navigator.of(context).pop();}, child: Text('no')),
              ],
            )
        );
      }
      );
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("My App "),
      ),
      body: Center(
        child: ElevatedButton(child: Text('Click me'),onPressed: (){MyAlertDialog(context);} ,),
      ),


    );

  }


}