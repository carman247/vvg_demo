import 'package:flutter/material.dart';
import 'package:vvg_demo/screens/book_consultation_screen.dart';

class ConsultationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.calendar_today,
            size: 60,
            color: Colors.grey,
          ),
          SizedBox(height: 20),
          Text("You don't have any consultations"),
          SizedBox(height: 20),
          FlatButton(
            color: Color(0xFF32A287),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookConsultationScreen(),
                ),
              );
            },
            child: Text(
              'Book consultation',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
