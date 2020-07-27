import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../SelectContryMobx.dart';
import '../../style.dart';
import '../save.dart';
import 'ChooseTelawa.dart';

class ChooseShik extends StatefulWidget {
  @override
  _ChooseShikState createState() => _ChooseShikState();
}

class _ChooseShikState extends State<ChooseShik> {
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      selectCountry.search.clear();
    });
    super.initState();
  }

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    GestureDetector(
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
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * .22),
              Text(
                'أختر قارئ',
                style: TextStyle(
                  fontSize: 23,
                  color: Color(0xff4EA1B5),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .08),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Color(0xff4EA1B5), width: 1.5),
                          borderRadius: BorderRadius.circular(30)),
                      height: 40,
                      width: MediaQuery.of(context).size.width * .8,
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
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
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
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            hintText: "بحث عن قارئ",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xff707070),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Color(0xff4EA1B5), width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Color(0xff4EA1B5), width: 1),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                              borderSide: BorderSide(color: Color(0xff4EA1B5), width: 1),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * .02),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ChooseTelawa();
                      }));
                    },
                    child: Image.asset(
                      'image/list.png',
                      width: 26,
                      height: 26,
                    ),
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .01),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: <Widget>[
                              _list(),
                              (index == 11)
                                  ? Container()
                                  : Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12),
                                      child: Divider(
                                        color: Color(0xffBFBFBF),
                                      ),
                                    ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _list() {
    return ExpansionTile(
      onExpansionChanged: (expanded) {
        setState(() {
          expanded = true;
        });
      },
      trailing: Icon(
        Icons.keyboard_arrow_down,
        color: Color(0xffB06544),
      ),
      title: Text(
        'عبدالباسط عبد الصمد',
        style: TextStyle(
          color: Color(0xff191818),
          fontSize: 14,
        ),
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          'image/sheik.png',
        ),
      ),
      children: <Widget>[
        Container(
          color: Color(0xffF9F6F1),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 16),
                      child: GestureDetector(
                        child: Row(
                          children: <Widget>[
                            Text(
                              'حفص \nبن عاصم',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffB06544),
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              'حفص بن عاصم',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffB06544),
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Save();
                          }));
                        },
                      ),
                    ),
                    (index == 2)
                        ? Container()
                        : Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Divider(
                              color: Colors.black12,
                            ),
                          ),
                  ],
                );
              }),
        )
      ],
    );
  }
}
