import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          FontAwesomeIcons.heart,
          size: 30,
          color: Color(0xFF32A287),
        ),
        SizedBox(width: 10),
        Row(
          children: <Widget>[
            Text(
              'VIRTUAL',
              style: TextStyle(
                fontSize: 30,
                color: Color(0xFF133B32),
                // Color(0xFF6C464E),
              ),
            ),
            SizedBox(width: 2),
            Text(
              'VET',
              style: TextStyle(fontSize: 30, color: Color(0xFF69BBA7)),
            ),
          ],
        )
      ],
    );
  }
}
