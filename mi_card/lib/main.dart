import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[800],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/kazuma.png"),
                  radius: 60,
                ),
              ),
              Text(
                "Hericles Koelher",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: "Bangers",
                ),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "IndieFlower",
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone_android,
                    color: Colors.blueGrey[800],
                  ),
                  title: Text(
                    "+55 (73) 99821-6555",
                    style: TextStyle(color: Colors.blueGrey[800]),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blueGrey[800],
                  ),
                  title: Text(
                    "brunokoelher@hotmail.com",
                    style: TextStyle(color: Colors.blueGrey[800]),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
                child: ListTile(
                  leading: SvgPicture.asset(
                    "images/logo_twitter.svg",
                    color: Colors.blueGrey[800],
                  ),
                  title: Text(
                    "@HericlesKoelher",
                    style: TextStyle(color: Colors.blueGrey[800]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
