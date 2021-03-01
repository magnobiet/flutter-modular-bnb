import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  final String title;
  const AboutPage({Key key, this.title = "About"}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
            child: Text('About page'),
          )
        ],
      ),
    );
  }
}
