import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: [
          Center(
            child: GestureDetector(
                child: new CircleAvatar(
                    backgroundColor: Color(0xFFFDFFFC),
                    child: Image.asset('assets/music.png',
                        width: 30.0, height: 40.0, fit: BoxFit.cover))),
          ),
          InkWell(
            onTap: _closeDrawer,
            child: ListTile(
              title: Text(
                'BERANDA',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.home),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text(
                'AKUN SAYA',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.home),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => CartPage()));
            },
            child: ListTile(
              title: Text(
                'BELANJAAN SAYA',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.home),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text(
                'KESUKAAN',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.home),
            ),
          ),
          Divider(color: Color(0xFF011627), height: 20.0),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text(
                'TENTANG',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.home),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => SettingsPage()));
            },
            child: ListTile(
              title: Text(
                'PENGATURAN',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.home),
            ),
          ),
          // SizedBox(
          //   height: 100.0,
          // ),
          // Positioned(
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         RaisedButton(
          //           elevation: 0.0,
          //           shape: new RoundedRectangleBorder(
          //               borderRadius: new BorderRadius.circular(30.0)),
          //           onPressed: _closeDrawer,
          //           color: Color(0xFFdee2e6),
          //           child: Text('Back',
          //               style: TextStyle(fontWeight: FontWeight.bold)),
          //         ),
          //       ],
          //     ),
          //     left: 100.0)
        ],
      ),
    );
  }
}
