import 'package:flutter/material.dart';

import 'Models/Item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Shopping List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Shared Shopping List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Item> items = [
    Item(name: "Item 1", id: "1", store: "smiths"),
    Item(name: "Item 2", id: "2", store: "smiths"),
    Item(name: "Item 3", id: "3", store: "smiths"),
    Item(name: "Item 4", id: "4", store: "smiths"),
  ];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.separated(
            itemBuilder: (ctx, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.purple),
                    child: Card(
                      // elevation: 10,
                      child: Container(
                        padding: EdgeInsets.all(30),
                        color: Colors.blue,
                        // margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                        child: Text("i have the"),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 10,
              );
            },
            itemCount: 5),

        //  Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     // Row(children: [
        //     // ListView.builder(
        //     //   itemBuilder: (ctx, index) {
        //     //     return Text("i have the");
        //     //   },
        //     //   itemCount: 5,
        //     // ),
        //     // ])
        //     // Row(
        //     //   children: [Text("Hello there")],
        //     // ),
        //   ],
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
