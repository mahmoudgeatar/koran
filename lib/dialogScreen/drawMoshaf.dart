import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../details.dart';
import '../style.dart';

class DrawMoshaf extends StatefulWidget {
  @override
  _DrawMoshafState createState() => _DrawMoshafState();
}

class _DrawMoshafState extends State<DrawMoshaf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F6F1),
      body: Stack(alignment: Alignment.topCenter, children: <Widget>[
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
          top: 40,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Details();
              }));
            },
            child: Image.asset(
              'image/backt.png',
              fit: BoxFit.cover,
              width: 15,
              height: 22,
            ),
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height * .22),
            Text(
              'رسم المصحف',
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Sukar-black',
                color: Color(0xff4EA1B5),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 40),
                child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.width + 140),
                  ),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        _dialog();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: ClipRRect(
                                child: Image(
                                  image: AssetImage('image/quran.png'),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 3),
                                  spreadRadius: .5,
                                  blurRadius: 6,
                                ),
                              ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text(
                                'مصحف المدينة الرئيسي',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff191818),
                                  fontSize: 15,
                                  fontFamily: 'Sukar-bold',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }

  Widget _dialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            child: Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * .4,
              height: MediaQuery.of(context).size.height * .21,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Image.asset('image/رسم المدينة.png'),
            ),
          );
        });
  }
}
