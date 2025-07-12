import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'MonApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
                'Bienevenu sur Mon application'), //bessoin de faire => padding: EdgeInsets.all(10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                height: 80,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 80,
                width: 100,
                color: Colors.blue,
              ),
              Container(
                height: 80,
                width: 100,
                color: Colors.green,
              )
            ]),
            Text("Mon stack"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  height: 80,
                  width: 100,
                  color: Colors.red,
                  padding: EdgeInsets.all(5),
                  child: Text("Flutter", style: TextStyle(color: Colors.white)),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  height: 80,
                  width: 100,
                  color: Colors.blue,
                  padding: EdgeInsets.all(5),
                  child: Text("Dart", style: TextStyle(color: Colors.white)),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  height: 80,
                  width: 100,
                  color: Colors.green,
                  padding: EdgeInsets.all(5),
                  child: Text("Android", style: TextStyle(color: Colors.white)),
                )
              ],
            ),
            Text("Ce que je vais apprendre"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 20,
              children: [
                Row(
                  spacing: 20,
                  children: [
                    Container(
                      height: 40,
                      width: 45,
                      color: Colors.blue[300],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Flutter",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("Application mobile Android")
                      ],
                    )
                  ],
                ),
                Row(
                  spacing: 20,
                  children: [
                    Container(
                      height: 40,
                      width: 45,
                      color: Colors.blue[300],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Flutter",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("Application mobile iOS")
                      ],
                    )
                  ],
                ),
                Row(
                  spacing: 20,
                  children: [
                    Container(
                      height: 40,
                      width: 45,
                      color: Colors.blue[300],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Flutter",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("Application web")
                      ],
                    )
                  ],
                ),
                Row(
                  spacing: 20,
                  children: [
                    Container(
                      height: 40,
                      width: 45,
                      color: Colors.blue[300],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Flutter",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("Application Desktop")
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
