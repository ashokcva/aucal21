import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _formkey = GlobalKey<FormState>();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

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
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              Image(
                fit: BoxFit.scaleDown,
                image: AssetImage('images/signin.png'),
              ),
              Container(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: usernamecontroller,
                  validator: (String username) {
                    if (username.isEmpty) {
                      return 'Please enter username';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Username", border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: passwordcontroller,
                  validator: (String password) {
                    if (password.isEmpty) {
                      return 'Please enter password';
                    } else {
                      return null;
                    }
                  },
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
//                        print('Button pressed');
                      setState(() {
                        if (_formkey.currentState.validate()) {
                          print('okay');
                        } else {
                          print('Not okay');
                        }
                      });
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        print('About pressed');
                      },
                      child: Text('About'),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Contact Us pressed');
                      },
                      child: Text('Contact Us'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
