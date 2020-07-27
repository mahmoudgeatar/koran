import 'package:almorshid/details.dart';
import 'package:almorshid/dialogScreen/saveScreen/ChooseShik.dart';
import 'package:almorshid/dialogScreen/saveScreen/ChooseTelawa.dart';
import 'package:almorshid/homepage.dart';
import 'package:almorshid/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Listining extends StatefulWidget {
  @override
  _ListiningState createState() => _ListiningState();
}

class _ListiningState extends State<Listining> {
  double SliderValue = 0.4;
  bool mark = false;

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  'image/sound.png',
                  width: 18,
                  height: 26,
                ),
                SizedBox(width: MediaQuery.of(context).size.width * .60),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.call_to_action,
                      color: Color(0xff4EA1B5),
                      size: 26,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * .03),
                    Image.asset(
                      'image/download.png',
                      fit: BoxFit.cover,
                      width: 15,
                      height: 22,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * .03),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Details();
                        }));
                      },
                      child: GestureDetector(
                        onTap: () {
                          _backdialog();
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
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * .20),
              Image.asset(
                'image/sheik.png',
                width: MediaQuery.of(context).size.width * .6,
                height: MediaQuery.of(context).size.height * .29,
              ),
              Text(
                'عبد الباسط عبد الصمد',
                style: TextStyle(
                  color: Color(0xff191818),
                  fontSize: 16,
                ),
              ),
              Text(
                'سورة البقرة',
                style: TextStyle(
                  color: Color(0xff707070),
                  fontSize: 14,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Image.asset(
                  'image/wave.png',
                  width: MediaQuery.of(context).size.width * .9,
                  height: MediaQuery.of(context).size.height * .15,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Color(0xff4EA1B5),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Center(
                      child: Text(
                        'x1',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Color(0xff4EA1B5),
                      borderRadius: BorderRadius.circular(36),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'image/arowright.png',
                            width: 12,
                            height: 10,
                          ),
                          Text(
                            '10',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Color(0xff4EA1B5),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Center(
                      child: Image.asset(
                        'image/play.png',
                        width: 16,
                        height: 16,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Color(0xff4EA1B5),
                      borderRadius: BorderRadius.circular(36),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'image/arowleft.png',
                            width: 12,
                            height: 10,
                          ),
                          Text(
                            '10',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Color(0xff4EA1B5),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Center(
                      child: Image.asset(
                        'image/moon.png',
                        width: 10,
                        height: 10,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '49:10',
                      style: TextStyle(
                        color: Color(0xff707070),
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '1.52',
                      style: TextStyle(
                        color: Color(0xff707070),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: SizedBox(
                    height: 14,
                    child: Slider(
                      inactiveColor: Color(0xff707070),
                      activeColor: Color(0xff4EA1B5),
                      value: SliderValue,
                      onChanged: (va) {
                        setState(() {
                          SliderValue = va;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Spacer(),
              _buttomBar(),
            ],
          )
        ],
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
            offset: Offset(0, -1),
            spreadRadius: .5,
            blurRadius: 2,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'القارئ',
              style: TextStyle(
                color: Color(0xff191818),
                fontSize: 15,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ChooseShik();
                }));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF9F6F1),
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Center(
                  child: Row(
                    children: <Widget>[
                      Text(
                        'عبد الباسط عبد ال...',
                        style: TextStyle(
                          color: Color(0xffB06544),
                          fontSize: 14,
                        ),
                      ),
                      Image.asset(
                        'image/backb.png',
                        width: 16,
                        height: 16,
                      ),
                    ],
                  ),
                ),
                padding: EdgeInsets.all(10),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF9F6F1),
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Row(
                  children: <Widget>[
                    Center(
                      child: Text(
                        'سورة البقرة',
                        style: TextStyle(
                          color: Color(0xffB06544),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * .1),
                    Image.asset(
                      'image/backb.png',
                      width: 16,
                      height: 16,
                    ),
                  ],
                ),
                padding: EdgeInsets.all(10),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //backDialog
  Widget _backdialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            insetPadding: EdgeInsets.all(15),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 21),
                    child: Text('هل تود تشغيل التلاوة داخل التطبيق؟'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 7,
                      bottom: 23,
                    ),
                    child: SvgPicture.asset(
                      'image/quran_dialog.svg',
                      fit: BoxFit.cover,
                      allowDrawingOutsideViewBox: true,
                      width: MediaQuery.of(context).size.width * .5,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Details();
                            }));
                          },
                          child: Container(
                            height: 53,
                            child: Center(
                                child: Text(
                              'لا',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            )),
                            decoration: BoxDecoration(
                              color: Color(0xffB06544),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Details();
                            }));
                          },
                          child: Container(
                            height: 53,
                            decoration: BoxDecoration(
                              color: Color(0xffBFBFBF),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              'نعم',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            )),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
