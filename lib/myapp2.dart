import 'package:flutter/material.dart';

import 'bottomnavigation.dart';

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World2!",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  String gretting = "helllo";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Trang Chủ",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        leading: Icon(
          Icons.home,
          size: 30,
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  gretting = "helll0001...???";
                });
              },
              icon: Icon(Icons.ac_unit))
        ],
      ),
      body: Center(
        child: Text(
          " ",
          style: TextStyle(fontSize: 30),
        ),
      ),
      // bottomNavigationBar: BottomNavigation(), 
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
            print(count);
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    
    );
  }
}
