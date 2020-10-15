import 'package:flutter/material.dart';
import 'package:playme/ui/cons.dart';
import 'package:playme/ui/homeScreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 80,
          elevation: 0,
          backgroundColor: Color(0xFF011627),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home, size: 30.0, color: texticonColor),
                child:
                    Text('Home', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ),
              
              Tab(
                icon: Icon(Icons.home, size: 30.0, color: texticonColor),
                child:
                    Text('Home', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ),

              Tab(
                icon: Icon(Icons.home, size: 30.0, color: texticonColor),
                child:
                    Text('Home', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ),

              Tab(
                icon: Icon(Icons.home, size: 30.0, color: texticonColor),
                child:
                    Text('Home', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ),
            ],
            indicatorColor: lineColor,
          )),
      body: TabBarView(
        children: [
          HomeScreen(),
          Center(child: Text('myPage')),
          Center(child: Text('myPage')),
          Center(child: Text('myPage')),
        ],
      ),
    );
  }
}
