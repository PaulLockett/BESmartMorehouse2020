import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart' as mongo;
import 'package:BESMARTHACK_app/server/server.dart' as server;

class availableList extends StatefulWidget {
  @override
  _availableListState createState() => _availableListState();
}

class _availableListState extends State<availableList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getItems(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.data != null) {
              print("------------");
              print(snapshot.data);
              return RefreshIndicator(
                onRefresh: _getData,
                child: ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      child: ListTile(
                        contentPadding: EdgeInsets.all(10),
                        title: Text(
                          snapshot.data[index]["SnackName"],
                          style: TextStyle(),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Quantity: " +
                                snapshot.data[index]["SnackQuantity"]),
                            Text("Price: \$" +
                                snapshot.data[index]["SnackPrice"])
                          ],
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                icon: Icon(Icons.remove), onPressed: () {}),
                            IconButton(icon: Icon(Icons.add), onPressed: () {})
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            } else {
              return Container(
                child: Center(
                  child: Column(
                    children: [
                      Text('Something went wrong. Please refresh'),
                      RaisedButton(
                        child: Text('Refresh'),
                        onPressed: () {
                          setState(() {
                            _getData();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              );
            }
          } else if (snapshot.connectionState == ConnectionState.none) {
            return Text("No data");
          }
          return CircularProgressIndicator();
        });
  }

  Future<void> _getData() async {
    setState(() {
      getItems();
    });
  }

  Future getItems() async {
    final db = await mongo.Db.create(
        'mongodb+srv://dbUser:dbUser@cluster0.sw59b.mongodb.net/items?retryWrites=true&w=majority');
    await db.open().then((value) => {print("success")});
    final collection = db.collection('refreshments');
    var items = await collection.find().toList();
    print(items);
    return items;
  }
}
