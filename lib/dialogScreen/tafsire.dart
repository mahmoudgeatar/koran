import 'package:almorshid/dialogScreen/tasilScreen/tafsirSearch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../style.dart';
import 'tasilScreen/tafsirBooks.dart';

class Tafsire extends StatefulWidget {
  @override
  _TafsireState createState() => _TafsireState();
}

class _TafsireState extends State<Tafsire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scafould,
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
                    'image/Paget.png',
                    width: 18,
                    height: 26,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return TafsirBook();
                    }));
                  },
                ),
                SizedBox(width: MediaQuery.of(context).size.width * .78),
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
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
                'تفسير',
                style: TextStyle(
                  fontSize: 23,
                  fontFamily: 'Sukar-black',
                  color: teal,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return TafsirSearch();
                  }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'سورة البقرة',
                      style: TextStyle(
                        fontSize: 21,
                        fontFamily: 'dt',
                        color: brown,
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
              SizedBox(height: MediaQuery.of(context).size.height * .05),
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
                            color: dialgtext,
                            fontSize: 24,
                            fontFamily: 'quran',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Text(
                            'إن الذين كفروا كأبي جهل وأبي لهب ونحوهما سواء عليهم أأنذرتهم بتحقيق الهمزتين وإبدال الثانية ألفاً وتسهيلها وإدخال ألف بين المسهلة والأخرى وتركه «أم لم تنذرهم لا يؤمنون» لعلم الله منهم ذلك فلا تطمع في إيمانهم، والإنذار إعلام مع تخويف.',
                            style: TextStyle(
                              fontFamily: 'cairo-reg',
                              fontSize: 14,
                              color: dialgtext,
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
