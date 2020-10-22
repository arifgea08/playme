import 'package:flutter/material.dart';
import 'package:playme/ui/cons.dart';
import 'package:playme/ui/playScreen.dart';

class LaguSaya extends StatefulWidget {
  @override
  _LaguSayaState createState() => _LaguSayaState();
}

class _LaguSayaState extends State<LaguSaya> {
  List<String> kata = [
    'Andi',
    'Tora',
    'Anggi',
    'Paskah',
    'Kim',
    'Budi',
    'Andi',
    'Tora',
    'Anggi',
    'Paskah',
    'Kim',
    'Budi',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 8,
      child: Hero(
        tag: 'play',
        child: ListView.builder(
            padding: EdgeInsets.all(20),
            itemCount: kata.length,
            itemBuilder: (BuildContext context, int index) {
              final text = kata[index].toString();
              return Card(
                shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(
                    color: lineColor,
                    width: 2.0,
                    style: BorderStyle.solid
                  ),
                ),
                // shape: StadiumBorder(
                //   side: BorderSide(
                //     color: Colors.black,
                //     width: 2.0,
                //   ),
                // ),
                elevation: 7.0,
                color: Color(0xFFe0fbfc).withOpacity(0.3),
                margin: EdgeInsets.only(bottom: 15),
                child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PlayScreen()));
                    },
                    subtitle: Text("Unkown", style: styleSub),
                    leading: Image.asset('assets/music.png', fit: BoxFit.cover),
                    title: Text(text, style: stylelisttitle)),
              );
            }),
      ),
    );
  }
}
