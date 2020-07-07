import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var _formkey = GlobalKey<FormState>();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController repasswordcontroller = TextEditingController();

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
            child: Container(
              color: Colors.white,
              child: Center(
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        fit: BoxFit.scaleDown,
                        image: AssetImage('images/signup.png'),
                      ),
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
                            labelText: "Your contact mail id",
                            hintText: "someone@email.com",
                            border: OutlineInputBorder()),
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
                            labelText: "Password",
                            hintText: "Use strong one & Atleast 8 characters",
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: repasswordcontroller,
                        validator: (String retypepassword) {
                          if (retypepassword.isEmpty) {
                            return 'Please retype password';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            labelText: "Retype password",
                            hintText: "This must match with the above field",
                            border: OutlineInputBorder()),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ButtonTheme(
                        height: 50,
                        child: RaisedButton(
                          color: Colors.indigoAccent,
                          onPressed: () {
                            setState(() {
                              if (_formkey.currentState.validate()) {
                                print('okay');
                              } else {
                                print('Not okay');
                              }
                            });
                          },
                          child: Text('Create Profile',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
