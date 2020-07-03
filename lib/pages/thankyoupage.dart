import 'package:flutter/material.dart';
class ThankYouPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:50,left: 8,right: 8,bottom: 8),
                child: Image(
                  fit: BoxFit.scaleDown,
                  image: AssetImage('images/thankyou.png'),
                ),
              ),
              Center(
                child: Text('You\'re awesome!',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue.shade900,
                  ),),
              ),
              Center(
                child: Text('Check your mail and complete the signup process.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.indigoAccent,
                  ),),
              ),
              Container(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ButtonTheme(
                  height: 50,
                  child: RaisedButton(
                    color: Colors.indigoAccent,
                    onPressed: () {

                    },
                    child: Text('Done',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),),
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}