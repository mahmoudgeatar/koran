import 'package:almorshid/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

import '../../SelectContryMobx.dart';
import '../tafsire.dart';

class TafsirSearch extends StatefulWidget {
  @override
  _TafsirSearchState createState() => _TafsirSearchState();
}

class _TafsirSearchState extends State<TafsirSearch> {
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      selectCountry.search.clear();
    });
    super.initState();
  }

  int ayanumber = 3;

  TextEditingController controller = TextEditingController();
  SelectContryMobx selectCountry = SelectContryController();
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
                Navigator.pop(context);
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
                'بحث بالسورة أو الجزء',
                style: TextStyle(
                    fontSize: 22, fontFamily: 'Sukar-black', color: teal),
              ),
              //search bar
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: teal, width: 1),
                      borderRadius: BorderRadius.circular(30)),
                  height: 40,
                  width: MediaQuery.of(context).size.width * .6,
                  child: TextField(
                    textAlign: TextAlign.start,
                    controller: selectCountry.search,
                    onChanged: (_) {
                      selectCountry.onChanged(_, context: context);
                      setState(() {});
                    },
                    style: TextStyle(
                      fontSize: 14,
                      color: textGray,
                    ),
                    decoration: InputDecoration(
                        suffixIcon: !selectCountry.onChange
                            ? Wrap(
                                alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                runAlignment: WrapAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    width: 25,
                                    height: 30,
                                    child: Image.asset('image/searcht.png'),
                                  ),
                                ],
                              )
                            : InkWell(
                                onTap: () {
                                  selectCountry.clear();
                                  selectCountry.keyword = "";
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.clear,
                                  color: teal,
                                  size: 25,
                                ),
                              ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        hintText: "إبحث عن سورة أو جزء",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: textGray,
                          fontFamily: 'sukar-bold',
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: teal, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: teal, width: 1),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: BorderSide(color: teal, width: 1),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              //ListVeiw

              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 12,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          _dialog();
                        },
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage('image/pattern.png'),
                                      )),
                                      height: 30,
                                      width: 30,
                                      child: Center(
                                        child: Text(
                                          '1',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'kf',
                                            color: brown,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'سورة الأعراف',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'dt',
                                            color: brown,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Image.asset('image/kaaba.png',
                                                width: 20, height: 20),
                                            SizedBox(width: 6),
                                            Text(
                                              '206',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Sukar-bold',
                                                  color: textGray),
                                            ),
                                            SizedBox(width: 4),
                                            Text(
                                              'أية',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'cairo',
                                                  color: textGray),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  'الجزء الأول',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'cairo',
                                      color: textGray),
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                            ),
                            Divider(
                              color: devider,
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }

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
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .3,
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
                        'الرجاء إختيار رقم الآية',
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
                              'من أية رقم',
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'إلى أية رقم',
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
                            return Tafsire();
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
}
