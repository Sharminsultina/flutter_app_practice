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

    return Scaffold(
      appBar: AppBar(
        title: Text("My App "),
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight: 40,
        toolbarOpacity: 1,
        //elevation: 4,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: (){MySnackBar("Cpmments", context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackBar("Search", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("settings", context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar("Email", context);}, icon: Icon(Icons.email)),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: (){
          MySnackBar("Floating action button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
        onTap: (int index){
          if(index==0){
            MySnackBar("Bottom manu", context);
          }
          if(index==1){
            MySnackBar("Contact manu", context);
          }
          if(index==2){
            MySnackBar("Profile manu", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  accountName: Text("Eite Islam",style: TextStyle(color: Colors.black)),
                  accountEmail: Text("ialameite101@gmail.com"),
                  currentAccountPicture: Image.network(''),
                  onDetailsPressed: (){MySnackBar("Home", context);},
                )
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                  MySnackBar("Home", context);
                }),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                  MySnackBar("Home", context);
                }),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                  MySnackBar("Home", context);
                }),

          ],
        ),
      ),
    );


  }


}
