import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../SelectContryMobx.dart';
import '../../style.dart';
import '../translate.dart';

class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      selectCountry.search.clear();
    });
    super.initState();
  }

  int cheked;

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
                'Choose Translation',
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
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 40,
                  width: MediaQuery.of(context).size.width * .6,
                  child: TextField(
                    textAlign: TextAlign.end,
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
                        prefixIcon: !selectCountry.onChange
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
                            EdgeInsets.symmetric(horizontal: 4, vertical: 0),
                        hintText: "search for Language",
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
              //ListVeiw
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 12,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    itemBuilder: (context, index) {
                      return Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        cheked = index;
                                      });
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Translate();
                                      }));
                                    },
                                    child: Container(
                                      child: Row(
                                        children: <Widget>[
                                          Image.asset(
                                            'image/engiland.png',
                                            width: 32,
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            'English',
                                            style: TextStyle(
                                              color: dialgtext,
                                              fontSize: 14,
                                              fontFamily: 'Sukar-reg',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
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
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .07),
                                    Image.asset(
                                      'image/downloadb.png',
                                      width: 18,
                                    ),
                                  ],
                                )
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                            ),
                          ),
                          (index == 8)
                              ? Container()
                              : Divider(
                                  color: devider,
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
