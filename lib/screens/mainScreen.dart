import 'package:flutter/material.dart';
import 'checkoutScreen.dart';
import 'Stewardess.dart';
import 'package:BESMARTHACK_app/widgets/newAvailableList.dart';
import 'package:dynatrace_flutter_plugin/dynatrace_flutter_plugin.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Image.asset('Images/aa.jpeg')],
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
      backgroundColor: Colors.blue[50],
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
              Container(
                child: availableList(),
                height: 450,
                width: 380,
              ),
              Padding(
                padding: EdgeInsets.all(50),
                child: Column(
                  children: [
                    RaisedButton(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CheckoutScreen()));
                      },
                      child: Text(
                        "Proceed to Checkout",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Stewardess()));
        },
        backgroundColor: Colors.red,
        child: Icon(
          Icons.help,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}
