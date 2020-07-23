import 'package:flutter/material.dart';

import '../style.dart';

class SearshRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    Image.asset('image/kaaba.png', width: 20, height: 20),
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
                          fontSize: 14, fontFamily: 'cairo', color: textGray),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Text(
          'الجزء الأول',
          style: TextStyle(fontSize: 14, fontFamily: 'cairo', color: textGray),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
    );
  }
}
