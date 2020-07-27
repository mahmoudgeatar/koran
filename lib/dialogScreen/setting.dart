import 'package:almorshid/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../style.dart';

class setting extends StatefulWidget {
  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
  bool isToggled = true;
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
              SizedBox(height: MediaQuery.of(context).size.height * .19),
              Text(
                'الإعدادات',
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xff4EA1B5),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'إختر اللون',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff191818),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(42),
                            gradient: new LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [
                                0.4,
                                .6,
                              ],
                              colors: [
                                Color(0xffDDAD22),
                                Color(0xff1C6330),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(42),
                            gradient: new LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [
                                0.4,
                                .6,
                              ],
                              colors: [
                                Color(0xff7A0A0A),
                                Color(0xff0C3446),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(42),
                            gradient: new LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [
                                0.4,
                                .6,
                              ],
                              colors: [
                                Color(0xff7A0A49),
                                Color(0xff974A9A),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(42),
                            gradient: new LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [
                                0.4,
                                .6,
                              ],
                              colors: [
                                Color(0xff116B7B),
                                Color(0xff20B87A),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(42),
                            gradient: new LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [
                                0.4,
                                .6,
                              ],
                              colors: [
                                Color(0xffB06544),
                                Color(0xff4EA1B5),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 34),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'تشغيل الوضع الليلي',
                      style: TextStyle(
                        color: Color(0xff191818),
                        fontSize: 16,
                      ),
                    ),
                    FlutterSwitch(
                      height: 20.0,
                      width: 41.0,
                      padding: 2.0,
                      toggleSize: 15.0,
                      borderRadius: 10.0,
                      activeColor: Color(0xffB06544),
                      value: isToggled,
                      onToggle: (value) {
                        setState(() {
                          isToggled = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'الأشعارات',
                      style: TextStyle(
                        color: Color(0xff191818),
                        fontSize: 16,
                      ),
                    ),
                    FlutterSwitch(
                      height: 20.0,
                      width: 41.0,
                      padding: 2.0,
                      toggleSize: 15.0,
                      borderRadius: 10.0,
                      activeColor: Color(0xffB06544),
                      value: isToggled,
                      onToggle: (value) {
                        setState(() {
                          isToggled = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(17),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Details();
                      }));
                    },
                    child: Container(
                      width: 120,
                      height: 34,
                      decoration: BoxDecoration(
                        color: Color(0xffB06544),
                      ),
                      child: Center(
                        child: Text(
                          'تم',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
