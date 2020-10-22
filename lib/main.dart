import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playme/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // kode untuk membuat orientasi aplikasi tidak bisa menjadi landscape
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
      
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(length: 4, child: HomePage()),
    );
  }
}