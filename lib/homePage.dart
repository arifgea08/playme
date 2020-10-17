import 'package:flutter/material.dart';
import 'package:playme/ui/cons.dart';
import 'package:playme/ui/album.dart';
import 'package:playme/ui/favorit.dart';
import 'package:playme/ui/laguSaya.dart';
import 'package:playme/ui/riwayat.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
          title: Text('PlayMe', style: styleku),
          centerTitle: true,
          titleSpacing: 2.0,
          actions: [
            Icon(Icons.search, size: 24.0, color: texticonColor),
            SizedBox(width: 30.0),
          ],
          toolbarHeight: 110,
          elevation: 0,
          backgroundColor: Color(0xFF293241),
          bottom: TabBar(
            unselectedLabelColor: Color(0xFFadb5bd),
            indicatorWeight: 4.0,
            labelPadding: EdgeInsets.only(left: 25, right: 15, bottom: 3),
            labelColor: Color(0xFFffbe0b),
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 16, fontFamily: 'LemonadaFont'),
            tabs: [
              Tab(text: 'RIWAYAT'),
              Tab(text: 'LAGU SAYA'),
              Tab(text: 'ALBUM'),
              Tab(text: 'FAVORIT'),
            ],
            indicatorColor: lineColor,
          )),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/bg1.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.6),BlendMode.luminosity),
        )),
        child: TabBarView(
          children: [
            Riwayat(),
            LaguSaya(),
            Album(),
            Favorit(),
          ],
        ),
      ),
    );
  }
}
