import 'package:BESMARTHACK_app/screens/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:dynatrace_flutter_plugin/dynatrace_flutter_plugin.dart';

void main() {
  Dynatrace().start(AASnacks());
  runApp(AASnacks());
}

class AASnacks extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AA Snack Station',
      theme:
          ThemeData(primarySwatch: Colors.red, accentColor: Colors.lightBlue),
      home: MainScreen(),
      navigatorObservers: [DynatraceNavigationObserver()],
    );
  }
}

class SnackHome extends StatefulWidget {
  SnackHome({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _SnackHomeState createState() => _SnackHomeState();
}

class _SnackHomeState extends State<SnackHome> {
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
          centerTitle: true,
          title: Column(
            children: [
              Text(
                widget.title,
                style: TextStyle(fontSize: 24),
              ),
              Text(
                "Mobile Snack Station",
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.only(top: 16),
            child: Column(
              children: [
                Text(
                  "Flight 1234",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlue[900],
                      decoration: TextDecoration.underline),
                ),
                SizedBox(height: 25),
                Text("Available Refreshments",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold))
              ],
            ),
            color: Colors.white70,
            width: 400,
          ),
        ));
  }

  static void _singleAction() {
    DynatraceRootAction myAction =
        Dynatrace().enterAction("MyButton tapped - Single Action");
    //Perform the action and whatever else is needed.
    myAction.leaveAction();
  }

  static void _subAction() {
    DynatraceRootAction myAction =
        Dynatrace().enterAction("MyButton tapped - Sub Action");
    DynatraceAction mySubAction = myAction.enterAction("MyButton Sub Action");
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
