import 'package:flutter/material.dart';
import 'SecondPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Grid View"),
        backgroundColor: Colors.deepOrange,
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search),
              onPressed: ()=>debugPrint("Search")
          ),
          new IconButton(
              icon: new Icon(Icons.add),
              onPressed: ()=>debugPrint("Add")
          )
        ],
      ),
      //end appbar


      //start drawer..

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

            new UserAccountsDrawerHeader(
                accountName: new Text("CodeWith ydc"),
                accountEmail: new Text("ydc@gmail.com"),
              decoration: new BoxDecoration(
                color: Colors.deepOrange
              ),
            ),

            new ListTile(
              title: new Text("First Page",
              style: TextStyle(
                fontSize: 20.0,
              ),
              ),
              onTap: (){
                Navigator.of(context).pop();
              },
              leading: new Icon(Icons.search,size: 20.0,color: Colors.deepOrange,),
            ),

            new ListTile(
              title: new Text("Second Page",
              style: TextStyle(
                fontSize: 20.0,
              ),
              ),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (contex)=>SecondPage()));
              },
              leading: new Icon(Icons.add,size: 20.0,color: Colors.blueGrey,),
            ),
            new ListTile(
              title: new Text("Third Page",
              style: TextStyle(
                fontSize: 20.0
              ),
              ),
              onTap: (){
                Navigator.of(context).pop();
              },
              leading: new Icon(Icons.title,size: 20.0,color: Colors.green,),
            ),
            new Divider(
              height: 5.0,
            ),
            new ListTile(
              title: new Text("Close",
              style: new TextStyle(
                fontSize: 20.0
              ),
              ),
              onTap: (){
                Navigator.of(context).pop();
              },
              leading: new Icon(Icons.close,size: 20.0,color: Colors.red,),
            )
          ],
        ),
      ),
      //end navigation drawer.
      body: new GridView.count(
          crossAxisCount: 3,
          children:List.generate(20, (index){
            return new Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: new Container(
                height: 50.0,
                width: 50.0,
                child: Align(
                    child: new Text('$index',
                    ),
                  alignment: Alignment.center,
                ),
              ),
            );
          })
      ),

    );
  }
}


