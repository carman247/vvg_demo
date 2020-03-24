import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vvg_demo/widgets/logo.dart';

import 'wrapper.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Color(0xFF32A287),
        ),
      ),
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 50),
              Logo(),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Email or User ID',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF133B32),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              CustomFormField(
                obscureText: false,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF133B32),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              CustomFormField(
                obscureText: passwordObscure,
                suffixIcon: IconButton(
                  icon: Icon(Icons.remove_red_eye),
                  onPressed: () {
                    setState(
                      () {
                        passwordObscure = !passwordObscure;
                      },
                    );
                  },
                  color: Colors.grey,
                ),
              ),
              Row(
                children: <Widget>[
                  CredentialCheckbox(),
                  Text(
                    'Remember Email or User ID',
                    style: TextStyle(
                      color: Color(0xFF133B32),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              MaterialButton(
                color: Color(0xFF32A287),
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Wrapper(),
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Forgotten your ',
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                      color: Color(0xFF32A287),
                    ),
                  ),
                  Text(', '),
                  Text(
                    'User ID ',
                    style: TextStyle(
                      color: Color(0xFF32A287),
                    ),
                  ),
                  Text('or '),
                  Text(
                    'Password ',
                    style: TextStyle(
                      color: Color(0xFF32A287),
                    ),
                  ),
                  Text('?'),
                ],
              ),
              SizedBox(height: 20),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have an account? "),
                  Text(
                    "Register",
                    style: TextStyle(
                      color: Color(0xFF32A287),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Support',
                    style: TextStyle(
                      color: Color(0xFF32A287),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 1,
                    height: 14,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Accessibility',
                    style: TextStyle(
                      color: Color(0xFF32A287),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(FontAwesomeIcons.fingerprint),
                    iconSize: 35,
                    color: Colors.grey,
                    onPressed: () {},
                  ),
                  SizedBox(width: 10),
                  Text('Sign in with fingerprint')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CredentialCheckbox extends StatefulWidget {
  const CredentialCheckbox({
    Key key,
  }) : super(key: key);

  @override
  _CredentialCheckboxState createState() => _CredentialCheckboxState();
}

class _CredentialCheckboxState extends State<CredentialCheckbox> {
  bool rememberCreds = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Color(0xFF32A287),
      value: rememberCreds,
      onChanged: (value) {
        setState(
          () {
            rememberCreds = value;
          },
        );
      },
    );
  }
}

class CustomFormField extends StatelessWidget {
  final Widget suffixIcon;
  final bool obscureText;

  const CustomFormField({Key key, this.obscureText, this.suffixIcon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      cursorColor: Color(0xFF69BBA7),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF32A287),
          ),
        ),
      ),
    );
  }
}
