import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 150.0, // fully expanded height
            // FlexibleSpaceBar updates the AppBar as you scroll
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'SliverAppBar',
              ),
              background: Image.network(
                'https://images.unsplash.com/photo-1620393470010-fd62b8ab841d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80', // image link
                fit: BoxFit.cover, // changes fit
              ),
              collapseMode: CollapseMode.pin, // changes default collapse mode from parralx to pin
            ),
            // pinned: true, // pins app bar to top
            floating: true, // shows app bar on scroll up
            snap: true, // makes the app bar immediately show up on scroll up
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate( // sliver child builder
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.grey, // changes color of container dependant on whether the number is even or odd
                  height: 100.0, // sets height
                  child: Center(
                    child: Text(
                      '$index', // index of widger
                      style: TextStyle(
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                );
              },
              childCount: 20, // number of widgets in list
            ),
          ),
        ],
      ),
    );
  }
}
