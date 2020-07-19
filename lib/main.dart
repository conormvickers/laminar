import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';


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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:

        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child:
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: 1000
                ),
                child: Container(
                  child: DefaultTabController(
                    length: 3,
                    child: Scaffold(
                      backgroundColor: Colors.transparent,
                      appBar: AppBar(
                          backgroundColor: Colors.indigo,
                          bottom: TabBar(
                            tabs: [
                              Padding(child: Text('home'),
                                padding: EdgeInsets.all(15),
                              ),
                              Padding(child: Text('apps'),
                                padding: EdgeInsets.all(15),
                              ),
                              Padding(child: Text('contact'),
                                padding: EdgeInsets.all(15),
                              ),
                            ],

                            indicatorColor: Colors.white,
                          ),
                          title: Expanded(
                              child:
                              Container(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    Text('L'),
                                    Icon(MaterialCommunityIcons.lambda),
                                    Text('M I N'),
                                    Icon(MaterialCommunityIcons.lambda),
                                    Text('R       M E D I C A L'),


                                  ],
                                )
                              )
                          )
                      ),
                      body: TabBarView(
                        children: [
                          Container(
                            color: Colors.transparent,
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            child: SingleChildScrollView(
                              child: Row(
                                children: [
                                  Container(
                                    
                                    child: Text("hello"),
                                  )
                                ],
                              )
                            ),
                          ),
                          Icon(Icons.directions_transit),
                          Icon(Icons.directions_bike),
                        ],
                      ),
                    ),
                  ),

                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.indigo, width: 2),
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
        ),



    );
  }
}
