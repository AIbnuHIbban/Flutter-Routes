import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new PageOne(),
    title: "Navigasi",
    routes: <String, WidgetBuilder>{
      '/One' : (BuildContext context) => new PageOne(),
      '/Two' : (BuildContext context) => new PageTwo(),
    },
  ));
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Page One"),
      ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.new_releases, size: 50,),
          onPressed: (){
            Navigator.pushNamed(context, '/Two');
          },
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Page Two"),
      ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.my_location, size: 50,),
          onPressed: (){
            Navigator.pushNamed(context, '/One');
          },
        ),
      ),
    );
  }
}