import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/login_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VVG Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF32A287),
        textSelectionHandleColor: Color(0xFF32A287),
        textSelectionColor: Color(0xFF69BBA7),
      ),
      home: LoginScreen(),
    );
  }
}
