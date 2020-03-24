import 'package:flutter/material.dart';

editInfo(BuildContext context, String title) {
  showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(
        title,
        style: TextStyle(color: Color(0xFF32A287)),
      ),
      content: TextFormField(),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'Cancel',
            style: TextStyle(color: Color(0xFF32A287)),
          ),
        ),
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'Save',
            style: TextStyle(
              color: Color(0xFF32A287),
            ),
          ),
        ),
      ],
    ),
  );
}

class AddPetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add pet'),
        backgroundColor: Color(0xFF32A287),
      ),
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: false,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFe2536c),
        child: InkWell(
          splashColor: Color(0xFFe2536c),
          // splashColor: Colors.white,
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            // color: Color(0xFFe2536c),
            height: 50,
            child: Center(
              child: Text(
                'Confirm changes',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InkWell(
              highlightColor: Colors.white,
              // splashColor: Colors.green,
              onTap: () {},
              child: Container(
                height: MediaQuery.of(context).size.height / 4,
                // color: Colors.grey[100],
                child: Center(
                  child: Icon(
                    Icons.add_a_photo,
                    size: 50,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  ProfileInfo(
                    hasButton: true,
                    title: 'Animal',
                    data: 'Dog',
                  ),
                  ProfileInfo(
                    hasButton: true,
                    title: 'Name',
                    data: 'Max',
                  ),
                  ProfileInfo(
                    hasButton: true,
                    title: 'Age',
                    data: '6',
                  ),
                  ProfileInfo(
                    hasButton: true,
                    title: 'Breed',
                    data: 'Boxer',
                  ),
                  ProfileInfo(
                    hasButton: true,
                    title: 'Sex',
                    data: 'Male',
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(height: 10),
                  ProfileInfo(
                    hasButton: false,
                    title: 'Weight',
                    data: '10kg',
                  ),
                  SizedBox(height: 10),
                  ProfileInfo(
                    hasButton: false,
                    title: 'Last worming date',
                    data: '19/12/19',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ProfileInfo(
                    hasButton: false,
                    title: 'Last flea treatment',
                    data: '19/12/19',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ProfileInfo(
                    hasButton: false,
                    title: 'Last dental check',
                    data: '19/12/19',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  final Function function;
  final bool hasButton;
  final String title;
  final String data;
  const ProfileInfo({
    Key key,
    this.title,
    this.data,
    this.hasButton,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFF32A287)),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Text(
                data,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey),
              ),
            ),
            hasButton
                ? IconButton(
                    icon: Icon(Icons.edit, color: Color(0xFF32A287)),
                    onPressed: () {
                      editInfo(context, title);
                    },
                  )
                : Container(),
          ],
        ),
      ],
    );
  }
}
