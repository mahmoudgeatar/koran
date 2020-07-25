import 'package:almorshid/homepage.dart';
import 'package:almorshid/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

import 'dialogScreen/drawMoshaf.dart';
import 'dialogScreen/lisining.dart';
import 'dialogScreen/marks.dart';
import 'dialogScreen/save.dart';
import 'dialogScreen/search.dart';
import 'dialogScreen/setting.dart';
import 'dialogScreen/tafsire.dart';
import 'dialogScreen/translate.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int ayanumber = 3;
  bool mark = false;

  List<String> mireDilagString = [
    'الإعدادات',
    'رسم المصحف',
    'استماع',
    'تلاوة وحفظ',
    'عرض الترجمة',
    'عرض التفسير',
    'بحث',
    'عرض العلامات المرجعية',
  ];

  List<String> icons = [
    'sitting.png',
    'pen.png',
    'playb.png',
    'learn.png',
    'translateb.png',
    'Pageb.png',
    'searchb.png',
    'mark.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
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
                        fontFamily: 'dt',
                        color: brown,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            mark = true;
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
            //aya content
            Expanded(
              child: GestureDetector(
                onTap: () {
                  _contentdialog();
                },
                child: Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Image.asset(
                        'image/capture.png',
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      _dialog();
                    },
                    child: Container(
                      width: 78,
                      height: 36,
                      decoration: BoxDecoration(
                          color: buttoncolor,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: devider,
                              blurRadius: 6,
                              offset: Offset(0, 3),
                            ),
                          ]),
                      child: Center(
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: brown,
                            fontFamily: 'Sukar-bold',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _moredialog();
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: buttoncolor,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: devider,
                              blurRadius: 6,
                              offset: Offset(0, 3),
                            ),
                          ]),
                      child: Image.asset(
                        'image/moreb.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

//aya dialog
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
                  height: 168,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .01,
                      ),
                      Text(
                        'الرجاء إختيار رقم الصفحة',
                        style: TextStyle(
                          color: dialgtext,
                          fontSize: 16,
                          fontFamily: 'Sukar-bold',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'رقم الصفحة',
                              style: TextStyle(
                                color: dialgtext,
                                fontSize: 16,
                                fontFamily: 'Sukar-reg',
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              height: 32,
                              width: 93,
                              decoration: BoxDecoration(
                                border: Border.all(color: brown, width: 1),
                                borderRadius: BorderRadius.circular(17),
                                color: brown,
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Details();
                          }));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          height: 34,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: brown,
                          ),
                          child: Center(
                            child: Text(
                              'إختيار',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Sukar-bold',
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
                        color: brown,
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

  //moreDialog
  Widget _moredialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    width: 260,
                    child: Dialog(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      insetPadding: EdgeInsets.all(15),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 6, 16, 0),
                            width: MediaQuery.of(context).size.width * .55,
                            decoration: BoxDecoration(
                              color: buttoncolor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                ListView.builder(
                                    itemCount: 8,
                                    shrinkWrap: true,
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          switch (mireDilagString[index]) {
                                            case 'الإعدادات':
                                              {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return setting();
                                                }));
                                              }
                                              break;
                                            case 'رسم المصحف':
                                              {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return DrawMoshaf();
                                                }));
                                              }
                                              break;
                                            case 'استماع':
                                              {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return Listining();
                                                }));
                                              }
                                              break;

                                            case 'تلاوة وحفظ':
                                              {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return Save();
                                                }));
                                              }
                                              break;

                                            case 'عرض الترجمة':
                                              {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return Translate();
                                                }));
                                              }
                                              break;
                                            case 'عرض التفسير':
                                              {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return Tafsire();
                                                }));
                                              }
                                              break;
                                            case 'بحث':
                                              {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return Search();
                                                }));
                                              }
                                              break;
                                            case 'عرض العلامات المرجعية':
                                              {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return Marks();
                                                }));
                                              }
                                              break;
                                          }
                                        },
                                        child: Column(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Image.asset(
                                                  'image/${icons[index]}',
                                                  width: 16,
                                                  height: 16,
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .03,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 2),
                                                  child: Text(
                                                    mireDilagString[index],
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Sukar-bold',
                                                      color: dialgtext,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            (index == 7)
                                                ? Container()
                                                : Divider(color: devider),
                                          ],
                                        ),
                                      );
                                    }),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        });
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
                                      fontFamily: 'Sukar-bold',
                                      color: dialgtext,
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
                    fontFamily: 'Sukar-bold',
                    color: dialgtext,
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return navigate;
              }));
            }),
        Divider(color: devider),
      ],
    );
  }
}
