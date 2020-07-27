import 'package:flutter/material.dart';

import '../SelectContryMobx.dart';
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

  TextEditingController controller = TextEditingController();

  SelectContryMobx selectCountry = SelectContryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Color(0xffFBFAF8),
            border: Border.all(color: Color(0xff4EA1B5), width: 1.5),
            borderRadius: BorderRadius.circular(25)),
        height: 40,
        width: MediaQuery.of(context).size.width * .84,
        child: TextField(
          textAlign: TextAlign.start,
          controller: selectCountry.search,
          style: TextStyle(fontSize: 14, color: Color(0xff191818)),
          decoration: InputDecoration(
              suffixIcon: !selectCountry.onChange
                  ? Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runAlignment: WrapAlignment.center,
                      children: <Widget>[Image.asset('image/searcht.png')],
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
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              hintText: "إبحث عن وظيفة",
              hintStyle: TextStyle(
                fontSize: 14,
                color: Color(0xff707070),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Color(0xff4EA1B5), width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Color(0xff4EA1B5), width: 1),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Color(0xff4EA1B5), width: 1),
              )),
        ),
      ),
    );
  }
}
