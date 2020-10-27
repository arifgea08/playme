import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'cons.dart';

class PlayScreen extends StatefulWidget {
  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF293241),
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.keyboard_arrow_down,
                size: 30,
              ),
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
          Icon(Icons.bento),
          SizedBox(width: MediaQuery.of(context).size.width / 20),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/bg1.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.6), BlendMode.luminosity),
        )),
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            // Image.asset('assets/music.png'),
            //

            CircularStepProgressIndicator(
              child: Image.asset('assets/musicon.png', fit: BoxFit.cover),
              totalSteps: 100,
              currentStep: 74,
              stepSize: 2,
              selectedColor: Color(0xFFf20089),
              unselectedColor: Colors.grey[200],
              padding: 0,
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.width / 2,
              selectedStepSize: 5,
              roundedCap: (_, __) => true,
            ),

            SizedBox(
              height: 60,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home, size: 24, color: texticonColor),
                Text('Judul LaguSaya', style: stylelisttitle),
                Icon(Icons.home, size: 24, color: texticonColor),
              ],
            )
          ],
        )),
      ),
    );
  }
}
