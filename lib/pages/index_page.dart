import 'package:flutter/material.dart';
import './drawer.dart';
import './body_page.dart';
import './textfield_page.dart';
import './recording_page.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('翻译'),
          elevation: 0.0,
        ),
        body: Column(
          children: <Widget>[
            IndexBody(),
            TextFieldDemo(),
            Container(
              height: 10,
            ),
            RecordingPage(),
          ],
        ),
        drawer: DrawerPage(),
      ),
    );
  }
}
