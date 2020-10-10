import 'package:flutter/material.dart';
import 'package:BESMARTHACK_app/widgets/itemList.dart';
import 'Stewardess.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:dynatrace_flutter_plugin/dynatrace_flutter_plugin.dart';

class CheckoutScreen extends StatelessWidget {
  List<VoidCallback> actions = [
    _merchantCheckoutAction,
    _clickToPayAction,
    _reportAll,
    _forceErrors,
    _reportCrash,
    _flushData,
    _tagUser,
    _endSession,
    _setGpsLocationHawaii,
    _collectionOff,
    _collectionPerformance,
    _collectionUserBehavior,
    _crashOptedInTrue,
    _crashOptedInFalse,
    () async {
      print('Data collection level:');
      print(await _getCollectionLevel());
    },
    () async {
      print('Crash reporting enabled:');
      print(await _getCrashReportingOptIn());
    }
  ];
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
                        actions[0];
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
                        actions[1];
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

  static void _merchantCheckoutAction() {
    DynatraceRootAction myAction = Dynatrace().enterAction("Merchant Clicked");
    //Perform the action and whatever else is needed.
    myAction.leaveAction();
  }

  static void _clickToPayAction() {
    DynatraceRootAction myAction =
        Dynatrace().enterAction("Click to Pay Clicked");
    DynatraceAction mySubAction = myAction.enterAction("Click to Pay Clicked");
    //Perform the action and whatever else is needed.
    mySubAction.leaveAction();
    myAction.leaveAction();
  }

  static void _reportAll() {
    DynatraceRootAction myAction =
        Dynatrace().enterAction("MyButton tapped - Report values");
    myAction.reportStringValue("ValueNameString", "ImportantValue");
    myAction.reportIntValue("ValueNameInt", 1234);
    myAction.reportDoubleValue("ValueNameDouble", 123.4567);
    myAction.reportEvent("ValueNameEvent");
    myAction.reportError("ValueNameError", 408);
    myAction.leaveAction();
  }

  static void _forceErrors() {
    String input = '12,34';
    double.parse(input);
  }

  static void _reportCrash() {
    Dynatrace().reportCrash(
        "FormatException", "Invalid Double", "WHOLE_STACKTRACE_AS_STRING");
  }

  static void _flushData() {
    Dynatrace().flushEvents();
  }

  static void _tagUser() {
    Dynatrace().identifyUser("User XY");
  }

  static void _endSession() {
    Dynatrace().endSession();
  }

  static void _setGpsLocationHawaii() {
    // set GPS coords to Hawaii
    Dynatrace().setGPSLocation(19, 155);
  }

  static void _collectionOff() {
    Dynatrace().setDataCollectionLevel(DataCollectionLevel.Off);
  }

  static void _collectionPerformance() {
    Dynatrace().setDataCollectionLevel(DataCollectionLevel.Performance);
  }

  static void _collectionUserBehavior() {
    Dynatrace().setDataCollectionLevel(DataCollectionLevel.User);
  }

  static void _crashOptedInTrue() {
    Dynatrace().setCrashReportingOptedIn(true);
  }

  static void _crashOptedInFalse() {
    Dynatrace().setCrashReportingOptedIn(false);
  }

  static Future<DataCollectionLevel> _getCollectionLevel() async {
    Future<DataCollectionLevel> dataColLevel =
        Dynatrace().getDataCollectionLevel();
    return dataColLevel;
  }

  static Future<bool> _getCrashReportingOptIn() async {
    Future<bool> crashReportingValue = Dynatrace().isCrashReportingOptedIn();
    return crashReportingValue;
  }
}
