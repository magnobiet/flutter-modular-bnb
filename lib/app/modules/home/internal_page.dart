import 'package:flutter/material.dart';

class InternalPage extends StatefulWidget {
  final String title;
  const InternalPage({Key key, this.title = 'Internal page'}) : super(key: key);

  @override
  _InternalPageState createState() => _InternalPageState();
}

class _InternalPageState extends State<InternalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text('Internal page'),
          )
        ],
      ),
    );
  }
}
