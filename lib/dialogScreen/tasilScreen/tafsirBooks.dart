import 'package:almorshid/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

import '../../SelectContryMobx.dart';
import '../tafsire.dart';

class TafsirBook extends StatefulWidget {
  @override
  _TafsirBookState createState() => _TafsirBookState();
}

class _TafsirBookState extends State<TafsirBook> {
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      selectCountry.search.clear();
    });
    super.initState();
  }

  int ayanumber = 3;
  int cheked;

  List<String> booksName = [
    'السعدى',
    'الوسيط الطنطاوى',
    'ابن كثير',
    'الجلالين',
    'القرطبى',
    'الطبرى',
    'التحرير والتنوير لابن عاشور',
    'إعراب القرأن - قاسم دعاسى',
    'تفهيم القرأن - إنجليزى',
  ];

  TextEditingController controller = TextEditingController();
  SelectContryMobx selectCountry = SelectContryController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xffF9F6F1),
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
                'كتب التفسير',
                style: TextStyle(
                    fontSize: 22, color: Color(0xff4EA1B5)),
              ),
              //search bar
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Color(0xff4EA1B5), width: 1),
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
                      color: Color(0xff707070),
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
                                  color: Color(0xff4EA1B5),
                                  size: 25,
                                ),
                              ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        hintText: "إبحث عن كتاب تفسير",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color(0xff707070),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color(0xff4EA1B5), width: 1.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Color(0xff4EA1B5), width: 1.5),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: BorderSide(color: Color(0xff4EA1B5), width: 1.5),
                        )),
                  ),
                ),
              ),
              //ListVeiw
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: booksName.length,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    itemBuilder: (context, index) {
                      return Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Expanded(
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          cheked = index;
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return Tafsire();
                                          }));
                                        });
                                      },
                                      child: Container(
                                        child: Text(
                                          booksName[index],
                                          style: TextStyle(
                                            color: Color(0xff191818),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      (cheked == index)
                                          ? Icon(
                                              Icons.check,
                                              color: Color(0xff1E824C),
                                              size: 26,
                                            )
                                          : Container(),
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .07),
                                      Image.asset(
                                        'image/downloadb.png',
                                        width: 18,
                                      ),
                                    ],
                                  )
                                ],
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                              ),
                            ),
                          ),
                          (booksName.length == index + 1)
                              ? Container()
                              : Divider(
                                  color: Color(0xffBFBFBF),
                                ),
                        ],
                      );
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }
}
