import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'AU CAL',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.indigoAccent,
              fontFamily: 'RobotoSlab-Bold',
              letterSpacing: 1),
        ),
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                fit: BoxFit.scaleDown,
                image: AssetImage('images/signin.png'),
              ),
            ),
            Container(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Username", border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Password", border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonTheme(
                buttonColor: Colors.indigoAccent,
                minWidth: 100,
                height: 50,
                child: RaisedButton(
                  onPressed: () {
                    print('Button pressed');
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: GestureDetector(
                  onTap: () {
                    print('Signup lead pressed');
                  },
                  child: Text('New to AUCal?'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 50,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: GestureDetector(
                    onTap: () {
                      print('About pressed');
                    },
                    child: Text('About'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: GestureDetector(
                    onTap: ()
                    {
                      print('Contact Us pressed');
                    },
                    child: Text('Contact Us'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
