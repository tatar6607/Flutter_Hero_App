import 'package:flutter/material.dart';
import 'package:heros/dashboard.dart';
import 'package:heros/detailPage.dart';

class HeroCard extends StatefulWidget {
  @override
  _HeroCardState createState() => _HeroCardState();
}

class _HeroCardState extends State<HeroCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            PageRouteBuilder(pageBuilder: (context, a, b) => DetailPage()));
      },
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => (DetailPage()),
              //     ));
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (context, a, b) => DetailPage()));
            },
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: BackgroundClipper(),
                child: Hero(
                  tag: "background",
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.orange, Colors.deepOrangeAccent],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.1 * 0.1),
                child: Image.asset("assets/iron_man.png", scale: 1.5),
              )),
          Positioned(
            bottom: 20.0,
            left: 50.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Iron man",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                ),
                Text(
                  "Click for more infos",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
