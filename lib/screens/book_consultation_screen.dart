import 'package:flutter/material.dart';

class BookConsultationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book consultation'),
        backgroundColor: Color(0xFF32A287),
      ),
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Select a service',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFF32A287)),
            ),
            SizedBox(height: 10),
            TextFormField(
              cursorColor: Color(0xFF32A287),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: Colors.grey)),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF32A287),
                    size: 30,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: Colors.grey))),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Text(
                    'Service list',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xFF32A287)),
                  ),
                  SizedBox(height: 10),
                  Service(title: 'Title'),
                  Service(title: 'Title'),
                  SizedBox(height: 10),
                  Text(
                    'Service list',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xFF32A287)),
                  ),
                  SizedBox(height: 10),
                  Service(title: 'Title'),
                  Service(title: 'Title'),
                  Service(title: 'Title'),
                  SizedBox(height: 10),
                  Text(
                    'Service list',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xFF32A287)),
                  ),
                  SizedBox(height: 10),
                  Service(title: 'Title'),
                  Service(title: 'Title'),
                  Service(title: 'Title'),
                  Service(title: 'Title'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Service extends StatelessWidget {
  final String title;

  const Service({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        onTap: () {},
        title: Text(
          title,
          style: TextStyle(color: Colors.grey[700]),
        ),
        trailing: Icon(
          Icons.chevron_right,
          color: Color(0xFF32A287),
        ),
      ),
    );
  }
}
