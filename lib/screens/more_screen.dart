import 'package:flutter/material.dart';
import 'package:vvg_demo/screens/about_screen.dart';
import 'package:vvg_demo/screens/health_advice_screen.dart';
import 'package:vvg_demo/screens/login_screen.dart';
import 'package:vvg_demo/screens/medical_records_screen.dart';
import 'package:vvg_demo/screens/my_account_screen.dart';
import 'package:vvg_demo/screens/vet_screen.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              AccountInfo(
                route: MyAccountScreen(),
              ),
              MoreOption(
                hasIcon: false,
                icon: Icons.healing,
                title: 'Your Vet',
                route: VetScreen(),
              ),
              Divider(),
              MoreOption(
                hasIcon: true,
                icon: Icons.healing,
                title: 'Medical records',
                route: MedicalRecordsScreen(),
              ),
              MoreOption(
                hasIcon: true,
                icon: Icons.info,
                title: 'Pet health advice',
                route: HealthAdviceScreen(),
              ),
              Divider(),
              MoreOption(
                hasIcon: false,
                icon: Icons.info,
                title: 'About',
                route: AboutScreen(),
              ),
            ],
          ),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            color: Color(0xFFe2536c),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
            child: Text(
              'Sign out',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class AccountInfo extends StatelessWidget {
  final Widget route;
  const AccountInfo({
    Key key,
    this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.grey[100],
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => route,
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Color(0xFF32A287),
              radius: 30,
              child: Text(
                'CC',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Chris Carman',
                  style: TextStyle(
                      color: Color(0xFF32A287),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Text(
                  'My account',
                  style: TextStyle(
                      color: Color(0xFFe2536c),
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MoreOption extends StatelessWidget {
  final bool hasIcon;
  final IconData icon;
  final String title;
  final Widget route;

  const MoreOption({Key key, this.hasIcon, this.icon, this.title, this.route})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => route,
            ),
          );
        },
        leading: hasIcon
            ? Icon(
                icon,
                color: Color(0xFFe2536c),
              )
            : null,
        title: Text(
          title,
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[700]),
        ),
        trailing: Icon(Icons.chevron_right, color: Colors.grey),
      ),
    );
  }
}
