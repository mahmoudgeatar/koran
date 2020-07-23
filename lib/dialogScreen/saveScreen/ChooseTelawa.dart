import 'package:almorshid/dialogScreen/saveScreen/ChooseShik.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../SelectContryMobx.dart';
import '../../style.dart';

class ChooseTelawa extends StatefulWidget {
  @override
  _ChooseTelawaState createState() => _ChooseTelawaState();
}

class _ChooseTelawaState extends State<ChooseTelawa> {
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
              SizedBox(height: MediaQuery.of(context).size.height * .21),
              Text(
                'تصفية نوع القراءة',
                style: TextStyle(
                  fontSize: 23,
                  fontFamily: 'Sukar-black',
                  color: teal,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                                      color: teal,
                                      size: 25,
                                    ),
                                  ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            hintText: "إبحث عن قراءة",
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
                ],
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return Column(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 12),
                                  child: GestureDetector(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Row(
                                        children: <Widget>[
                                          RichText(
                                            text: TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: '\nحفص',
                                                  style: TextStyle(
                                                    fontFamily: 'samt',
                                                    fontSize: 16,
                                                    color: teal,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '\nبن',
                                                  style: TextStyle(
                                                    fontFamily: 'samt',
                                                    fontSize: 16,
                                                    color: brown,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '\nعاصم',
                                                  style: TextStyle(
                                                    fontFamily: 'samt',
                                                    fontSize: 16,
                                                    color: brown,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 8),
                                          Text(
                                            'حفص بن عاصم',
                                            style: TextStyle(
                                              fontFamily: 'Sukar-bold',
                                              fontSize: 16,
                                              color: brown,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return ChooseShik();
                                      }));
                                    },
                                  ),
                                ),
                              ],
                            ),
                            (index == 11)
                                ? Container()
                                : Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: Divider(
                                      color: Colors.black12,
                                    ),
                                  ),
                          ],
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
}
