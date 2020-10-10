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
           appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "ASK",
            style: TextStyle(color: Colors.black),
            ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
            },
          ),
        ),
           body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: new EdgeInsets.all(20),
              color: Colors.red,
              child: Center( 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    ImageIcon( 
                      new AssetImage("Images/flight-attendant.png"),
                      size: 50,
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
              shape: CircleBorder(),
              color: Colors.yellow,
              child: Center( 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    ImageIcon( 
                      new AssetImage("Images/man-outline-throwing-at-trash-can.png"),
                      size: 50,
                    ),
                    Text(
                      "Request trash pickup",
                    ),
                  ]
                ),
              ),
            ),
            Card(
              margin: new EdgeInsets.all(20),
              color: Colors.blue,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              child: Center( 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Image.asset( 
                      "Images/blanket.png",
                      height: 50,
                      width: 50,
                    ),
                    Text(
                      "Request blanket",
                    ),
                  ]
                ),
              ),
            ),
            Card(
              margin: new EdgeInsets.all(20),
              color: Colors.orange,
              child: Center( 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    ImageIcon( 
                      new AssetImage("Images/headphone-symbol.png"),
                      size: 50,
                    ),
                    Text(
                      "Request Headphones",
                    ),
                  ]
                ),
              ),
            ),
            Card(
              margin: new EdgeInsets.all(20),
              color: Colors.pink,
              child: Center( 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    ImageIcon( 
                      new AssetImage("Images/pillow.png"),
                      size: 50,
                    ),
                    Text(
                      "Request Pillow",
                    ),
                  ]
                ),
              ),
            ),
            Card(
              margin: new EdgeInsets.all(20),
              color: Colors.green,
              shape: CircleBorder(),
              child: Center( 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    ImageIcon( 
                      new AssetImage("Images/seat.png"),
                      size: 50,
                    ),
                    Text(
                      "Ask for seat change",
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