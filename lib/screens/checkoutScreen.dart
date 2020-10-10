import 'package:flutter/material.dart';
import 'package:BESMARTHACK_app/widgets/itemList.dart';
import 'Stewardess.dart';

class CheckoutScreen extends StatelessWidget {
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
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [Image.asset('Images/aa.jpeg')],
        title: Column(
          children: [
            Text(
              "Mobile Snack Station",
              style: TextStyle(
                  color: Colors.blueGrey[900], fontWeight: FontWeight.bold),
            ),
            Text(
              "Checkout",
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
                  "Verify Your Selections",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              ItemList(),
              Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Seat Location: ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.blueGrey[900],
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                            height: 30,
                            width: 50,
                            child: TextFormField(
                              maxLength: 3,
                              cursorColor: Colors.blue,
                              decoration: InputDecoration(
                                counterText: "",
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                              ),
                            ))
                      ],
                    ),
                  )),
              Divider(
                color: Colors.black,
                indent: 20,
                endIndent: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 250),
                    child: Text(
                      "Total",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Text(
                    "\$2.00",
                    style: TextStyle(fontSize: 20),
                  )
                ],
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
                        print('Merchant Checkout');
                      },
                      child: Text(
                        "[Merchant] Checkout",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "OR",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      onPressed: () {
                        print('Click to Pay');
                      },
                      child: Text(
                        "Click to Pay",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
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
