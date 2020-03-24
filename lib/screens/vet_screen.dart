import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your vet'),
        backgroundColor: Color(0xFF32A287),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'Vet Name',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.mapMarkerAlt,
                      size: 18,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child:
                          Text('The Vets, Something Road, Somewhere, AB1 2CD'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.clock,
                      size: 18,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Open today',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '09:00 - 18:00 ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF32A287)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.phone,
                      size: 18,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        '0345 030 303',
                        style: TextStyle(
                            color: Color(0xFF32A287),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),  
              ],
            ),
          )
        ],
      ),
    );
  }
}
