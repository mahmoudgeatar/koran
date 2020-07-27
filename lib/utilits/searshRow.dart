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
                    color: Color(0xffB06544),
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
                    color: Color(0xffB06544),
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
                          color: Color(0xff707070)),
                    ),
                    SizedBox(width: 4),
                    Text(
                      'أية',
                      style: TextStyle(
                          fontSize: 14, color: Color(0xff707070)),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Text(
          'الجزء الأول',
          style: TextStyle(fontSize: 14,  color: Color(0xff707070)),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
    );
  }
}
