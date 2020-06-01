import 'package:flutter/material.dart';
import 'package:test_setstate/main.dart';

class HomePageChild1 extends StatefulWidget {
  HomePageChild1({Key key, this.keyScaffod}) : super(key: key);
  GlobalKey keyScaffod;

  @override
  _HomePageChild1State createState() => _HomePageChild1State();
}

class _HomePageChild1State extends State<HomePageChild1> {
  void reBuild() {
    if (this.mounted) {
      setState(() {});
    }
  }

  void reBuildMyHomePage() {
    MyHomePageState myHomePageState = MyHomePageState().of(context);
    myHomePageState.rebuildHomePage();
  }

  @override
  Widget build(BuildContext context) {
    print('REBUILD LẠI HOMEPAGECHILD1');
    return Center(
      child: Column(
        children: <Widget>[
          FlatButton(
            onPressed: reBuild,
            child: Text('Render lại home page 1'),
          ),
          FlatButton(
            onPressed: reBuildMyHomePage,
            child: Text('Render lại MyHomePageState'),
          ),
        ],
      ),
    );
  }
}
