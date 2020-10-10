import 'package:flutter/material.dart';

class Stewardess extends StatefulWidget {
  Stewardess({Key key}) : super(key: key);

  @override
  _StewardessState createState() => _StewardessState();
}

class _StewardessState extends State<Stewardess> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: SafeArea(
         child: Scaffold(
           body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: new EdgeInsets.all(20),
              elevation: 1,
              color: Colors.red,
              child: Center( 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Icon(
                      Icons.favorite,
                    ),
                    Text(
                      "Call stewardess",
                    ),
                  ]
                ),
              ),
            ),
            Card(
              margin: new EdgeInsets.all(20),
              shape: cir,
              color: Colors.red,
              child: Center( 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Icon(
                      Icons.favorite,
                    ),
                    Text(
                      "Call stewardess",
                    ),
                  ]
                ),
              ),
            ),
            Card(
              margin: new EdgeInsets.all(20),
              color: Colors.red,
              child: Center( 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Icon(
                      Icons.favorite,
                    ),
                    Text(
                      "Call stewardess",
                    ),
                  ]
                ),
              ),
            ),
            Card(
              margin: new EdgeInsets.all(20),
              color: Colors.red,
              child: Center( 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Icon(
                      Icons.favorite,
                    ),
                    Text(
                      "Call stewardess",
                    ),
                  ]
                ),
              ),
            ),
            Card(
              margin: new EdgeInsets.all(20),
              color: Colors.red,
              child: Center( 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Icon(
                      Icons.favorite,
                    ),
                    Text(
                      "Call stewardess",
                    ),
                  ]
                ),
              ),
            ),
            Card(
              margin: new EdgeInsets.all(20),
              color: Colors.red,
              child: Center( 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Icon(
                      Icons.favorite,
                    ),
                    Text(
                      "Call stewardess",
                    ),
                  ]
                ),
              ),
            ),
          ],
         ),
        ),
      ),
    );
  }
}