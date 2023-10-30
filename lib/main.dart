import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_practice/Fragment/AlarmFragment.dart';
import 'package:flutter_app_practice/Fragment/EmailFragment.dart';
import 'package:flutter_app_practice/Fragment/HomeFragment.dart';
import 'package:flutter_app_practice/Fragment/PersonFragment.dart';

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
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: Text('My App'),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home),text: 'Home'),
                Tab(icon: Icon(Icons.person),text:'Person'),
                Tab(icon: Icon(Icons.email),text:'Email'),
                Tab(icon: Icon(Icons.alarm),text:'Alarm'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeFragment(),
              PersonFragment(),
              EmailFragment(),
              AlarmFragment(),

            ],
          ),
        )
    );

  }
}