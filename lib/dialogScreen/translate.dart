import 'package:almorshid/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../details.dart';
import 'translteScreen/language.dart';
import 'translteScreen/transleted.dart';

class Translate extends StatefulWidget {
  @override
  _TranslateState createState() => _TranslateState();
}

class _TranslateState extends State<Translate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFAF8),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  child: Image.asset(
                    'image/translatet.png',
                    width: 18,
                    height: 26,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Language();
                    }));
                  },
                ),
                SizedBox(width: MediaQuery.of(context).size.width * .78),
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Details();
                        }));
                      },
                      child: Container(
                        width: 25,
                        height: 32,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('image/backt.png'),
                        )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * .19),
              Text(
                'Translation',
                style: TextStyle(
                  fontSize: 23,
                  color:  Color(0xff4EA1B5),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Transleted();
                  }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'AL -Baqrah',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffB06544),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * .02),
                    Image.asset(
                      'image/downt.png',
                      width: 16,
                      height: 16,
                    )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .1),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          'إِنَّ الَّذِينَ كَفَرُوا سَوَاءٌ عَلَيْهِمْ أَأَنْذَرْتَهُمْ أَمْ لَمْ تُنْذِرْهُمْ لَا يُؤْمِنُونَ',
                          style: TextStyle(
                            color: Color(0xff191818),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Text(
                            'Indeed, those who disbelieve - it is all the same for them whether you warn them or do not warn them - they will not believe',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff191818),
                            ),
                          ),
                        ),
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
