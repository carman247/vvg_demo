import 'package:flutter/material.dart';
import 'package:vvg_demo/screens/add_pet_screen.dart';

class PetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.pets,
            size: 60,
            color: Colors.grey,
          ),
          SizedBox(height: 20),
          Text("You don't have any pets"),
          SizedBox(height: 20),
          FlatButton(
            color: Color(0xFF32A287),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddPetScreen(),
                ),
              );
            },
            child: Text(
              'Add pet',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
