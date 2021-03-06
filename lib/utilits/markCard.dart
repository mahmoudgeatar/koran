import 'package:flutter/material.dart';

import '../style.dart';

class MarkCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 3),
              blurRadius: 6,
              spreadRadius: .5,
            )
          ]),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                topLeft: Radius.circular(8),
              ),
              color: Color(0xff4EA1B5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'هود - الآية 109',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'صفحة : 234',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            padding: EdgeInsets.all(12),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            child: Text(
              'فَلَا تَكُ فِي مِرْيَةٍ مِّمَّا يَعْبُدُ هَؤُلَاءِ مَا يَعْبُدُونَ إِلَّا كَمَا يَعْبُدُ آبَاؤُهُم مِّن قَبْلُ وَإِنَّا لَمُوَفُّوهُمْ نَصِيبَهُمْ غَيْرَ مَنقُوصٍ',
              style: TextStyle(
                color: Color(0xff191818),
                fontSize: 21,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'تلاوة',
                      style: TextStyle(
                        color: Color(0xffB06544),
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Image.asset(
                                  'image/date.png',
                                  width: 14,
                                ),
                                SizedBox(width: 6),
                                Text(
                                  '12/09/2020',
                                  style: TextStyle(
                                    color: Color(0xff707070),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 12),
                            Row(
                              children: <Widget>[
                                Image.asset(
                                  'image/time.png',
                                  width: 14,
                                ),
                                SizedBox(width: 6),
                                Text(
                                  '06:30 م',
                                  style: TextStyle(
                                    color: Color(0xff707070),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  width: 75,
                  decoration: BoxDecoration(
                    color: Color(0xffF9F6F1),
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(
                      color: Color(0xffB06544),
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'إزالة العلامة',
                      style: TextStyle(
                        color: Color(0xffB06544),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
