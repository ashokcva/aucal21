import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './pages/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('LOGIN PAGE'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                  },
                ),
                FlatButton(
                  child: Text('SIGNUP PAGE'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                  },
                ),
                FlatButton(
                  child: Text('THANK YOU PAGE'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),

    );
  }
}
