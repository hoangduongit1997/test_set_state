import 'package:flutter/material.dart';

class HomePageChild2 extends StatefulWidget {
  HomePageChild2({Key key}) : super(key: key);

  @override
  _HomePageChild2State createState() => _HomePageChild2State();
}

class _HomePageChild2State extends State<HomePageChild2> {
  void reBuild() {
    if (this.mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    print('REBUILD LẠI HOMEPAGECHILD2');
    return Center(
      child: FlatButton(
        onPressed: reBuild,
        child: Text('Render lại home page 2'),
      ),
    );
  }
}
