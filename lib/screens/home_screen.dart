import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'book_consultation_screen.dart';

final List<Widget> items = [
  GridItem(
    imgSource: 'assets/images/pet1.jpg',
  ),
  GridItem(
    imgSource: 'assets/images/pet2.jpg',
  ),
  GridItem(
    imgSource: 'assets/images/pet1.jpg',
  ),
  GridItem(
    imgSource: 'assets/images/pet2.jpg',
  ),
  GridItem(
    imgSource: 'assets/images/pet1.jpg',
  ),
  GridItem(
    imgSource: 'assets/images/pet2.jpg',
  ),
];

final String bodyText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HomeCard(
              function: () {},
              hasButton: true,
              buttonTextColor: Color(0xFF133B32),
              buttonColor: Colors.white,
              buttonText: 'Find out more',
              dismissable: true,
              title: Text(
                'Pet insurance',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              color: Color(0xFF5297b3),
              body: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla aliquet enim tortor at auctor urna nunc. Turpis egestas maecenas pharetra convallis posuere morbi leo urna.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            HomeCard(
              function: () {},
              hasButton: true,
              buttonTextColor: Color(0xFF133B32),
              buttonColor: Colors.white,
              buttonText: 'Find out more',
              dismissable: true,
              title: Text(
                'Fleas, ticks, and lice',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              color: Color(0xFF32A287),
              body: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nulla aliquet enim tortor at auctor urna nunc. Turpis egestas maecenas pharetra convallis posuere morbi leo urna.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Get advice',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF32A287)),
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: TextFormField(
                cursorColor: Color(0xFF32A287),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Color(0xFF32A287),
                        size: 30,
                      ),
                      onPressed: () {}),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.grey[300],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            HomeCard(
              hasButton: true,
              buttonTextColor: Color(0xFFFFFFFF),
              buttonColor: Color(0xFF32A287),
              buttonText: 'Book consultation',
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookConsultationScreen(),
                  ),
                );
              },
              dismissable: false,
              title: Text(
                'Next consultation',
                style: TextStyle(fontSize: 24, color: Colors.grey[700], fontWeight: FontWeight.bold),
              ),
              body: Center(
                  child: Column(
                children: <Widget>[
                  Icon(
                    Icons.calendar_today,
                    size: 50,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 10),
                  Text('You have no upcoming consultations'),
                ],
              )),
              color: Colors.grey[200],
            ),
            SizedBox(height: 20),
            HomeCard(
              color: Colors.grey[100],
              hasButton: false,
              title: Text(
                'Your Vet',
                style: TextStyle(fontSize: 24, color: Colors.grey[700], fontWeight: FontWeight.bold),
              ),
              dismissable: false,
              body: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.mapMarkerAlt,
                        size: 18,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                            'The Vets, Something Road, Somewhere, AB1 2CD'),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.clock,
                        size: 18,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
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
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.phone,
                        size: 18,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
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
              buttonText: 'Change',
            ),
            SizedBox(height: 15),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Latest news articles',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF32A287)),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 300,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 4 / 3,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (ctx, i) => items[i],
              ),
            ),
            SizedBox(height: 10),
            HomeCard(
              function: () {},
              dismissable: false,
              color: Color(0xFFe2536c),
              body: Text(
                'Having trouble using Virtual Vet?',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              hasButton: true,
              buttonText: 'Go to support',
              buttonColor: Colors.white,
              title: Text(
                'Need Help',
                style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String imgSource;
  const GridItem({
    Key key,
    this.imgSource,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.grey[100],
      child: Column(
        children: <Widget>[
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Container(
                child: Image.asset(imgSource),
              ),
            ),
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Title',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '${bodyText.substring(0, 100)}...',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    Text(
                      'Read more >>',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF32A287)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  final Function function;
  final bool hasButton;
  final Color buttonTextColor;
  final Color buttonColor;
  final String buttonText;
  final bool dismissable;
  final Widget title;
  final Widget body;
  final Color color;
  const HomeCard({
    Key key,
    this.color,
    this.title,
    this.body,
    this.dismissable,
    this.buttonText,
    this.buttonColor,
    this.buttonTextColor,
    this.hasButton,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: color,
      child: Container(
        padding: EdgeInsets.all(25),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                title,
                dismissable
                    ? Icon(
                        Icons.clear,
                        color: Colors.white,
                      )
                    : Container(),
                // IconButton(icon: Icon(Icons.clear), onPressed: () {})
              ],
            ),
            SizedBox(height: 20),
            body,
            SizedBox(height: 10),
            hasButton
                ? FlatButton(
                    color: buttonColor,
                    child: Text(
                      buttonText,
                      style: TextStyle(color: buttonTextColor),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: function,
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
