import 'package:almorshid/dialogScreen/saveScreen/ChooseShik.dart';
import 'package:almorshid/dialogScreen/tafsire.dart';
import 'package:almorshid/dialogScreen/translate.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

import '../homepage.dart';
import '../style.dart';
import 'lisining.dart';
import 'marks.dart';
import 'saveScreen/repet.dart';

class Save extends StatefulWidget {
  @override
  _SaveState createState() => _SaveState();
}

class _SaveState extends State<Save> {
  List<String> contentDilagString = [
    'استماع',
    'إضافة علامة مرجعية',
    'عرض الترجمة',
    'عرض التفسير',
    'مشاركة',
  ];

  List<String> contenticons = [
    'playb.png',
    'mark2.png',
    'translateb.png',
    'Pageb.png',
    'shareb.png',
  ];
  bool mark = false;

  int ayanumber = 3;

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
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
                    },
                    child: Text(
                      'سورة البقرة - الجزء الأول',
                      style: TextStyle(
                        fontSize: 21,
                        color: Color(0xffB06544),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            mark = true;
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Marks();
                            }));
                          });
                        },
                        child: Image.asset(
                          mark ? 'image/mark.png' : 'image/mark2.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * .03),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
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
                onTap: () {
                  _contentdialog();
                },
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
            offset: Offset(0, -1),
            spreadRadius: .5,
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              _dialog();
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffF9F6F1),
                borderRadius: BorderRadius.circular(9),
              ),
              child: Center(
                child: Text(
                  'التكرار',
                  style: TextStyle(
                    color: Color(0xffB06544),
                    fontSize: 14,
                  ),
                ),
              ),
              padding: EdgeInsets.all(10),
            ),
          ),
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Color(0xffB06544),
              borderRadius: BorderRadius.circular(48),
            ),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Listining();
                  }));
                },
                child: Image.asset(
                  'image/play.png',
                  width: 16,
                  height: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //content Dialog
  Widget _contentdialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            elevation: 0,
            backgroundColor: Colors.transparent,
            insetPadding: EdgeInsets.all(15),
            child: Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _conentDialogList('playb', 'استماع', Listining()),
                      _conentDialogList('mark2', 'إضافة علامة مرجعية', Marks()),
                      _conentDialogList(
                          'translateb', 'عرض الترجمة', Translate()),
                      _conentDialogList('Pageb', 'عرض التفسير', Tafsire()),
                      Column(
                        children: <Widget>[
                          GestureDetector(
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 3),
                                    child: Image.asset(
                                      'image/shareb.png',
                                      width: 16,
                                      height: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * .02,
                                  ),
                                  Text(
                                    'مشاركة',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff191818),
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                share(context, 'share');
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  void share(BuildContext context, String s) {
    final RenderBox box = context.findRenderObject();
    final String text = 'share';
    Share.share(text,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }

  Widget _conentDialogList(String image, String title, Widget navigate) {
    return Column(
      children: <Widget>[
        GestureDetector(
            child: Row(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                  child: Image.asset(
                    'image/${image}.png',
                    width: 16,
                    height: 16,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .02,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff191818),
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return navigate;
              }));
            }),
        Divider(color: Color(0xffBFBFBF)),
      ],
    );
  }

  //Repet Dialog
  Widget _dialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            insetPadding: EdgeInsets.all(15),
            child: Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  height: 364,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .05,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'بدء من سورة',
                              style: TextStyle(
                                color: Color(0xff191818),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 2),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return HomePage();
                                }));
                              },
                              child: Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.all(10),
                                width: MediaQuery.of(context).size.width,
                                height: 37,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Color(0xffBFBFBF), width: 2),
                                ),
                                child: SizedBox(
                                  child: Image.asset(
                                    'image/downb.png',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'الانتهاء بسورة',
                              style: TextStyle(
                                color: Color(0xff191818),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 2),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return HomePage();
                                }));
                              },
                              child: Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.all(10),
                                width: MediaQuery.of(context).size.width,
                                height: 37,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Color(0xffBFBFBF), width: 2),
                                ),
                                child: SizedBox(
                                  child: Image.asset(
                                    'image/downb.png',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'تكرار الآية',
                              style: TextStyle(
                                color: Color(0xff191818),
                                fontSize: 16,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              height: 32,
                              width: 93,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffB06544), width: 1),
                                borderRadius: BorderRadius.circular(17),
                                color: Color(0xffB06544),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GestureDetector(
                                    child: Icon(
                                      Icons.add,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                    onTap: () {
                                      setState(() {
                                        ayanumber++;
                                      });
                                    },
                                  ),
                                  Container(
                                    height: double.infinity,
                                    width: 43,
                                    color: Colors.white,
                                    child: Center(
                                      child: Text(
                                        ayanumber.toString(),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Icon(
                                      Icons.remove,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                    onTap: () {
                                      setState(() {
                                        ayanumber--;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'تكرار الفقرة',
                              style: TextStyle(
                                color: Color(0xff191818),
                                fontSize: 16,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              height: 32,
                              width: 93,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffB06544), width: 1),
                                borderRadius: BorderRadius.circular(17),
                                color: Color(0xffB06544),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GestureDetector(
                                    child: Icon(
                                      Icons.add,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                    onTap: () {
                                      setState(() {
                                        ayanumber++;
                                      });
                                    },
                                  ),
                                  Container(
                                    height: double.infinity,
                                    width: 43,
                                    color: Colors.white,
                                    child: Center(
                                      child: Text(
                                        ayanumber.toString(),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Icon(
                                      Icons.remove,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                    onTap: () {
                                      setState(() {
                                        ayanumber--;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Repet();
                          }));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          height: 34,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: Color(0xffB06544),
                          ),
                          child: Center(
                            child: Text(
                              'تفعيل التكرار',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 5,
                  left: 5,
                  child: IconButton(
                      icon: Icon(
                        Icons.clear,
                        color: Color(0xffB06544),
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                )
              ],
            ),
          );
        });
  }
}
