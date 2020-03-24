import 'package:flutter/material.dart';
import 'package:vvg_demo/screens/edit_account_details_screen.dart';

class AccountSettingsScreen extends StatefulWidget {
  AccountSettingsScreen({
    Key key,
  }) : super(key: key);

  @override
  _AccountSettingsScreenState createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account settings'),
        backgroundColor: Color(0xFF32A287),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Account details',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditAccountDetailsScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Edit',
                    style: TextStyle(
                        color: Color(0xFFe2536c), fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Text('Please ensure your information is up-to-date.'),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.email,
                          color: Color(0xFF32A287),
                        ),
                        SizedBox(width: 10),
                        Text('chris.carman247@gmail.com')
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          color: Color(0xFF32A287),
                        ),
                        SizedBox(width: 10),
                        Text('07987 654 321')
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Change password',
                  style: TextStyle(
                      color: Color(0xFFe2536c), fontWeight: FontWeight.bold),
                )
              ],
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                    'Please choose a strong password and never share it with anyone.'),
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Fingerprint sign in',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Card(
                child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Text(
                        'You can use your fingerprint to sign in to Virtual Vet app without needing to enter your password'),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Fingerprint sign in',
                          style: TextStyle(
                              color: Color(0xFF32A287),
                              fontWeight: FontWeight.bold),
                        ),
                        Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(
                              () {
                                isSwitched = value;
                              },
                            );
                          },
                          activeColor: Color(0xFF32A287),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
