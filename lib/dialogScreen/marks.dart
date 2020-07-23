import 'package:almorshid/utilits/markCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../details.dart';
import '../style.dart';

class Marks extends StatefulWidget {
  @override
  _MarksState createState() => _MarksState();
}

class _MarksState extends State<Marks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(
            child: SvgPicture.asset(
              'image/Quran_backgroung.svg',
              fit: BoxFit.cover,
              allowDrawingOutsideViewBox: true,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Positioned(
            left: 20,
            top: 60,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Details();
                }));
              },
              child: Container(
                width: 25,
                height: 32,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('image/backb.png'),
                )),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * .22),
              Text(
                'العلامات المرجعية',
                style: TextStyle(
                  fontSize: 23,
                  fontFamily: 'Sukar-black',
                  color: teal,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .1),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 12),
                        child: MarkCard(),
                      );
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
