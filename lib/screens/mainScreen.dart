import 'package:flutter/material.dart';
import 'checkoutScreen.dart';

class MainScreen extends StatelessWidget {
  int quantity = 1;
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
              // TODO: Replace these cards with the list widget
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Card(
                  elevation: 5,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Text(
                      "Bottled Water",
                      style: TextStyle(),
                    ),
                    subtitle: Text("Quantity: $quantity"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(icon: Icon(Icons.remove), onPressed: () {}),
                        IconButton(icon: Icon(Icons.add), onPressed: () {})
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Card(
                  elevation: 5,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Text(
                      "Ginger Ale",
                      style: TextStyle(),
                    ),
                    subtitle: Text("Quantity: $quantity"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(icon: Icon(Icons.remove), onPressed: () {}),
                        IconButton(icon: Icon(Icons.add), onPressed: () {})
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Card(
                  elevation: 5,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Text(
                      "Sprite",
                      style: TextStyle(),
                    ),
                    subtitle: Text("Quantity: $quantity"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(icon: Icon(Icons.remove), onPressed: () {}),
                        IconButton(icon: Icon(Icons.add), onPressed: () {})
                      ],
                    ),
                  ),
                ),
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
    );
  }
}
