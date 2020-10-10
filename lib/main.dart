import 'package:BESMARTHACK_app/screens/Stewardess.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AASnacks());
}

class AASnacks extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AA Snack Station',
      theme:
          ThemeData(primarySwatch: Colors.red, accentColor: Colors.lightBlue),
      home: SnackHome(title: 'American Airlines'),
    );
  }
}

class SnackHome extends StatefulWidget {
  SnackHome({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _SnackHomeState createState() => _SnackHomeState();
}

class _SnackHomeState extends State<SnackHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey,
              size: 45,
            ),
            onPressed: () {},
          ),
          centerTitle: true,
          title: Column(
            children: [
              Text(
                widget.title,
                style: TextStyle(fontSize: 24),
              ),
              Text(
                "Mobile Snack Station",
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.only(top: 16),
            child: Column(
              children: [
                Text(
                  "Flight 1234",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue[900],
                      decoration: TextDecoration.underline),
                ),
                SizedBox(height: 25),
                Text("Available Refreshments",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold))
              ],
            ),
            color: Colors.white70,
            width: 400,
          ),
        ));
  }
}
