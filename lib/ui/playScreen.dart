import 'package:flutter/material.dart';

class PlayScreen extends StatefulWidget {
  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.keyboard_arrow_down, size: 30,),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
        title: Text('Judul lagu'),
        centerTitle: true,
        actions: [
          //Image.asset('assets/menu.png', height: 14.0, color: Colors.white, fit: BoxFit.cover)
          Icon(Icons.arrow_drop_down),
          SizedBox(width: MediaQuery.of(context).size.width/20),
        ],
      ),
    );
  }
}
