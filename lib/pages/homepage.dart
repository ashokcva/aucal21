import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CalendarController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TableCalendar(
                calendarController: _controller,
                calendarStyle: CalendarStyle(
                  todayColor: Colors.indigo,
//                    selectedColor: Colors.indigoAccent,
//                    selectedStyle: TextStyle(fontSize: 20, color: Colors.white),
                ),
                headerStyle: HeaderStyle(
                  centerHeaderTitle: true,
                  formatButtonShowsNext: false,
                ),
                startingDayOfWeek: StartingDayOfWeek.monday,
                onDaySelected: (day, events) {
//                  print(day.toIso8601String());
                  showEventDetails(context);
                },
                builders: CalendarBuilders(
                    selectedDayBuilder: (context, date, events) => Container(
                          margin: EdgeInsets.all(4.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.pink)),
                          child: Text(
                            date.day.toString(),
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        )),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SeparateWidget(),
    );
  }
}

class SeparateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Colors.pinkAccent,
        child: Icon(Icons.add),
        onPressed: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('Button moved to separate widget'),
            duration: Duration(seconds: 3),
            action: SnackBarAction(
              textColor: Colors.indigo.shade400,
              label: 'Okay',
              onPressed: () {
                debugPrint('FAB action');
              },
            ),
          ));
        });
  }
}

void showEventDetails(BuildContext context) {

  var detaildialog = AlertDialog(
    title: Text('Event name'),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.event),
          title: Text('Event name',
          ),
          subtitle: Text('Event detail text',
          ),
          trailing: Icon(Icons.delete_forever,
            color: Colors.red,
          ),
        ),
        ListTile(
          title: Text('11, July 2020'),
          subtitle: Text('17:00:00'),
          trailing: Icon(
            Icons.edit,
            color: Colors.blueAccent,
          ),
          onTap: () {
            showToast('asdfasdf');
          },
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              child: Text("Okay"),
              onPressed: () {
                //Put your code here which you want to execute on No button click.
                Navigator.of(context).pop();
              },
            ),
          ],
        )
      ],
    ),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return detaildialog;
      });
}

void showToast(String s) {
  Fluttertoast.showToast(
      msg: s,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.indigoAccent,
      textColor: Colors.white,
      fontSize: 16.0);
}