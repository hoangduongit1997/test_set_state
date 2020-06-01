import 'package:flutter/material.dart';
import 'package:test_setstate/home_page_child_1.dart';
import 'package:test_setstate/home_page_child_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('BUILD LẠI MY APP');
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  MyHomePageState of(BuildContext context) {
    return context.findAncestorStateOfType();
  }

  void rebuildHomePage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print('BUILD LẠI MYHOMEPAGE');
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            HomePageChild1(
              keyScaffod: key,
            ),
            HomePageChild2()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
