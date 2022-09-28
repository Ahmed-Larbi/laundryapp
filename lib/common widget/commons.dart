import 'package:flutter/material.dart';

class HorizontalList extends StatefulWidget {
  const HorizontalList({super.key});

  @override
  State<HorizontalList> createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Nearby Laundries",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue[400]),
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 30.0),
            height: 60.0,
            child: Expanded(
              child: new ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      print("Instagram");
                    },
                    child: Container(
                      width: 125.0,
                      color: Colors.transparent,
                      child: Image(
                        image: AssetImage("assets/images/instagram.png"),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("Whatsapp");
                    },
                    child: Container(
                      width: 125.0,
                      color: Colors.transparent,
                      child: Image(
                        image: AssetImage("assets/images/whatsapp.png"),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("someLogo");
                    },
                    child: Container(
                      width: 125.0,
                      color: Colors.transparent,
                      child: Image(
                        image: AssetImage("assets/images/logo.png"),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("twitter");
                    },
                    child: Container(
                      width: 125.0,
                      color: Colors.transparent,
                      child: Image(
                        image: AssetImage("assets/images/twitter.png"),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
