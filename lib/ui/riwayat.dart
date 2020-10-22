
import 'package:flutter/material.dart';
import 'package:playme/ui/cons.dart';

class Riwayat extends StatefulWidget {
  @override
  _RiwayatState createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {

  @override
  Widget build(BuildContext context) {

    final terakhirPutar = Container(
      
    );

    return Container(
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text('Terakhir diputar', style: textStyle),
          Container(
            color: Colors.transparent,
            height: MediaQuery.of(context).size.height/6,
            child: terakhirPutar,
          )
        ],
      ),
    );
  }
}