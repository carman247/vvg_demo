import 'package:flutter/material.dart';

class EditAccountDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Edit account details'),
        backgroundColor: Color(0xFF32A287),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Edit account details',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text('Your account details are shown below.'),
                SizedBox(height: 20),
                Text(
                  'Email',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF32A287),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Color(0xFF32A287),
                  initialValue: 'chris.carman247@gmail.com',
                ),
                SizedBox(height: 20),
                Text(
                  'Mobile number',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF32A287),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  cursorColor: Color(0xFF32A287),
                  initialValue: '07987 654 321',
                ),
                SizedBox(height: 80),
                Text(
                  'Confirm changes by entering your password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF32A287),
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xFF32A287),
                  decoration:
                      InputDecoration(hintText: 'Please enter your password'),
                ),
              ],
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              color: Color(0xFFe2536c),
              onPressed: () {},
              child: Text(
                'Confirm',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
