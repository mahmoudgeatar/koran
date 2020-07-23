import 'package:almorshid/details.dart';
import 'package:flutter/material.dart';

import '../../style.dart';

class Repet extends StatefulWidget {
  @override
  _RepetState createState() => _RepetState();
}

class _RepetState extends State<Repet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'سورة البقرة - الجزء الأول',
                      style: TextStyle(
                        fontSize: 21,
                        fontFamily: 'dt',
                        color: brown,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'image/mark2.png',
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * .03),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Details();
                          }));
                        },
                        child: Image.asset(
                          'image/backb.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('image/capture.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            _buttomBar(),
          ],
        ),
      ),
    );
  }

  Widget _buttomBar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, -3),
            spreadRadius: .5,
            blurRadius: 6,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            'القارئ',
            style: TextStyle(
              color: dialgtext,
              fontFamily: 'Sukar-bold',
              fontSize: 15,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: buttoncolor,
              borderRadius: BorderRadius.circular(9),
            ),
            child: Center(
              child: Row(
                children: <Widget>[
                  Text(
                    'عبد الباسط عبد ال...',
                    style: TextStyle(
                      color: brown,
                      fontFamily: 'Sukar-bold',
                      fontSize: 14,
                    ),
                  ),
                  Image.asset(
                    'image/backb.png',
                    width: 24,
                    height: 23,
                  ),
                ],
              ),
            ),
            padding: EdgeInsets.all(10),
          ),
          GestureDetector(
            onTap: () {},
            child: Stack(
              alignment: Alignment.topLeft,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: buttoncolor,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Center(
                    child: Text(
                      'التكرار',
                      style: TextStyle(
                        color: brown,
                        fontFamily: 'Sukar-bold',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: teal,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: brown,
              borderRadius: BorderRadius.circular(48),
            ),
            child: Center(
              child: Image.asset(
                'image/play.png',
                width: 16,
                height: 16,
              ),
            ),
          ),
          Image.asset(
            'image/morebalck.png',
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }
}
