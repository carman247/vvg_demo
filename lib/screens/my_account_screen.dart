import 'package:flutter/material.dart';
import 'package:vvg_demo/screens/account_settings_screen.dart';

class MyAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My account'),
        backgroundColor: Color(0xFF32A287),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            AccountOption(
              title: 'Account settings',
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AccountSettingsScreen(),
                  ),
                );
              },
            ),
            AccountOption(
              title: 'Contact details',
            ),
            AccountOption(
              title: 'Payment methods',
            ),
            AccountOption(
              title: 'Nominated vet',
            ),
            AccountOption(
              title: 'Support',
            ),
          ],
        ),
      ),
    );
  }
}

class AccountOption extends StatelessWidget {
  final Function function;
  final String title;

  const AccountOption({Key key, this.title, this.function}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        onTap: function,
        leading: null,
        title: Text(title),
        trailing: Icon(Icons.chevron_right, color: Colors.grey),
      ),
    );
  }
}
