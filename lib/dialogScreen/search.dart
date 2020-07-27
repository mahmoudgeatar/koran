import 'package:almorshid/utilits/searshRow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../SelectContryMobx.dart';
import '../details.dart';
import '../style.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      selectCountry.search.clear();
    });
    super.initState();
  }

  int ayanumber = 3;

  bool soraSearch = false;

  TextEditingController controller = TextEditingController();
  SelectContryMobx selectCountry = SelectContryController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F6F1),
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Stack(
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
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Details();
                    }));
                  },
                  child: Container(
                    width: 20,
                    height: 32,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('image/backt.png'),
                    )),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: MediaQuery.of(context).size.height * .21),
                  Text(
                    soraSearch ? 'بحث في نصوص الآيات' : 'بحث بالسورة أو الجزء',
                    style: TextStyle(
                        fontSize: 22,  color: Color(0xff4EA1B5)),
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
                            hintText: soraSearch
                                ? 'إبحث عن كلمة'
                                : "إبحث عن سورة أو جزء",
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
                  Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: soraSearch ? 2 : 12,
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              _dialog();
                            },
                            child: Column(
                              children: <Widget>[
                                soraSearch
                                    ? Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 16),
                                        child: Text(
                                          'خَتَمَ اللَّهُ عَلَى قُلُوبِهِمْ وَعَلَى سَمْعِهِمْ وَعَلَى أَبْصَارِهِمْ غِشَاوَةٌ وَلَهُمْ عَذَابٌ عَظِيمٌ',
                                          style: TextStyle(
                                              color:  Color(0xff191818),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    : SearshRow(),
                                Divider(
                                  color: Color(0xffBFBFBF),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  child: Container(
                    height: 10,
                    width: 70,
                    decoration: BoxDecoration(
                        color: soraSearch ? Color(0xffBFBFBF) : Color(0xff4EA1B5),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  onTap: () {
                    setState(() {
                      soraSearch = false;
                    });
                  },
                ),
                SizedBox(width: 10),
                GestureDetector(
                  child: Container(
                    height: 10,
                    width: 70,
                    decoration: BoxDecoration(
                      color: soraSearch ? Color(0xff4EA1B5) : Color(0xffBFBFBF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      soraSearch = true;
                    });
                  },
                ),
              ],
            ),
          ),
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
                        soraSearch
                            ? 'الرجاء إختيار رقم الآية'
                            : 'الرجاء إختيار رقم الصفحة',
                        style: TextStyle(
                          color:  Color(0xff191818),
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              soraSearch ? 'رقم الآية' : 'رقم الصفحة',
                              style: TextStyle(
                                color:  Color(0xff191818),
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
                            color: Color(0xffB06544),
                          ),
                          child: Center(
                            child: Text(
                              'إختيار',
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
