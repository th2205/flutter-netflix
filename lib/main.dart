import 'package:flutter/material.dart';
import 'package:netflixclone/widgets/bottom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  __MyAppState createState() => __MyAppState();
}

class __MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'netflix',
      theme: ThemeData(
          accentColor: Colors.white,
          primaryColor: Colors.black,
          brightness: Brightness.dark),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Center(
                child: Text('cat'),
              ),
              Center(
                child: Text('cat'),
              ),
              Center(
                child: Text('cat'),
              ),
              Center(
                child: Text('cat'),
              )
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
