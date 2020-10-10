import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TODO: Dynamically Create the row widgets for each item
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 20),
              child: Text(
                "Bottled Water",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 2),
              child: Text(
                "x1",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 25),
              child: Text("\$0.00",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 20),
              child: Text(
                "Biscoff Cookie",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 2),
              child: Text(
                "x1",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 25),
              child: Text("\$0.00",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 20),
              child: Text(
                "Ginger Ale",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 2),
              child: Text(
                "x1",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 25),
              child: Text("\$2.00",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            )
          ],
        )
      ],
    );
  }
}
