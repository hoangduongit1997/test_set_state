import 'package:flutter/material.dart';

class HomePageChild1 extends StatefulWidget {
  HomePageChild1({Key key}) : super(key: key);

  @override
  _HomePageChild1State createState() => _HomePageChild1State();
}

class _HomePageChild1State extends State<HomePageChild1> {
  void reBuild() {
    if (this.mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    print('REBUILD LẠI HOMEPAGECHILD1');
    return Center(
      child: FlatButton(
        onPressed: reBuild,
        child: Text('Render lại home page 1'),
      ),
    );
  }
}
