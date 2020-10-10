/*import 'package:flutter/material.dart';

class EventsList extends StatefulWidget {
  @override
  _EventsListState createState() => _EventsListState();
}

class _EventsListState extends State<EventsList> {
  final Firestore firestore = Firestore.instance;

  final int _numItems = 3;

  @override
  Widget build(BuildContext context) {
    return _numItems != 0
        ? buildList()
        : Center(child: Text("Nothing is Available for this Flight"));
  }

  Widget buildList() {
    return FutureBuilder(
        future: getImages(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.data != null) {
              return RefreshIndicator(
                onRefresh: _getData,
                child: ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      child: ListTile(
                        contentPadding: EdgeInsets.all(10),
                        leading: Image.network(
                            snapshot.data.documents[index].data["url"],
                            fit: BoxFit.fill),
                        title: Text(
                          snapshot.data.documents[index].data["title"],
                          style: TextStyle(),
                        ),
                        subtitle:
                            Text(snapshot.data.documents[index].data["date"]),
                        onTap: () {
                          _showEnlargedEvent(index, context);
                        },
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
                      Text('Something went wrong. Please refresh the app'),
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
      getImages();
    });
  }

  Future<QuerySnapshot> getImages() {
    return firestore.collection("images").getDocuments();
  }
}
*/