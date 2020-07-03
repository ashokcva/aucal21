import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
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
                    decoration: InputDecoration(
                        labelText: "Your contact mail id",
                        hintText: "someone@email.com",
                        border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Use strong one & Atleast 8 characters",
                        border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
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
    );
  }
}
