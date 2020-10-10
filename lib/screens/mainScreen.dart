import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
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
        title: Column(
          children: [
            Text(
              "American Airlines",
              style: TextStyle(
                  color: Colors.blueGrey[900], fontWeight: FontWeight.bold),
            ),
            Text(
              "Mobile Snack Station",
              style: TextStyle(
                  color: Colors.blueGrey[900],
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          child: Column(
            children: [
              Center(
                child: Text(
                  "Flight 1234",
                  style: TextStyle(color: Colors.blue[300], fontSize: 25),
                ),
              ),
              Divider(
                color: Colors.black,
                indent: 20,
                endIndent: 20,
              ),
              Center(
                child: Text(
                  "Available Refreshments",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              //ItemList(),
              Padding(
                padding: EdgeInsets.all(100),
                child: Column(
                  children: [
                    RaisedButton(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      onPressed: () {
                        print('Proceed to Checkout');
                      },
                      child: Text(
                        "Proceed to Checkout",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
