import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
        home: HomeActivity()
    );
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

  var MyItems = [
    {'img':'https://cdn.rabbil.com/photos/images/2022/11/05/Artboard--5.jpg','title':'Rabbil'},
    {'img':'https://cdn.rabbil.com/photos/images/2022/11/05/Artboard--5.jpg','title':'Rabbil'},
    {'img':'https://cdn.rabbil.com/photos/images/2022/11/05/Artboard--5.jpg','title':'Rabbil'},
  ];
  mySnackBar(context,msg){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App "),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          childAspectRatio: 1.3,

        ),
        itemCount: MyItems.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){mySnackBar(context,MyItems[index]['title']);},
          child: Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 250,
            child: Image.network(MyItems[index]['img']!, fit:BoxFit.fill),
           ),
          );
        },
      )

    );
  }
}