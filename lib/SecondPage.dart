import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => new _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Custom Grid"),
        backgroundColor: Colors.red,
      ),

      body: new GridView.count(
          crossAxisCount: 2,
        children: <Widget>[

          new Container(
            height: 100.0,
            width: 100.0,
            child: new Card(
              elevation: 10.0,
              child: new Text("First One"),
            ),
          ),

          new Container(
            height: 100.0,
            width: 100.0,
            child: new Card(
              elevation: 10.0,
              child: new Text("First One"),
            ),
          ),

          new Container(
            height: 100.0,
            width: 100.0,
            child: new Card(
              elevation: 10.0,
              child: new Text("First One"),
            ),
          ),

          new Container(
            height: 100.0,
            width: 100.0,
            child: new Card(
              elevation: 10.0,
              child: new Text("First One"),
            ),
          ),

          new Container(
            height: 100.0,
            width: 100.0,
            child: new Card(
              elevation: 10.0,
              child: new Text("First One"),
            ),
          ),

          new Container(
            height: 100.0,
            width: 100.0,
            child: new Card(
              elevation: 10.0,
              child: new Text("First One"),
            ),
          ),


          new Container(
            height: 100.0,
            width: 100.0,
            child: new Card(
              elevation: 10.0,
              child: new Text("First One"),
            ),
          ),

          new Container(
            height: 100.0,
            width: 100.0,
            child: new Card(
              elevation: 10.0,
              child: new Text("First One"),
            ),
          ),
          new Container(
            height: 100.0,
            width: 100.0,
            child: new Card(
              elevation: 10.0,
              child: new Text("First One"),
            ),
          ),


          
          new Container(
            height: 100.0,
            width: 100.0,
            child: new Card(
              elevation: 10.0,
              child: new Text("First One"),
            ),
          ),
        ],
      ),
    );
  }
}
