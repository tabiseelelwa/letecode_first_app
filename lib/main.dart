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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, title: Text(widget.title)),

      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Bienevenu sur Mon application',
              style: TextStyle(color: Color(0xFF092BED)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(height: 80, width: 100, color: Colors.red),
                Container(height: 80, width: 100, color: Colors.blue),
                Container(height: 80, width: 100, color: Colors.green),
              ],
            ),
            Text("Mon stack", style: TextStyle(color: Color(0xFF092BED))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      height: 80,
                      width: 100,
                      color: Colors.red[400],
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "Flutter",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      height: 80,
                      width: 100,
                      color: Colors.yellow[900],
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "Dart",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      height: 80,
                      width: 100,
                      color: Colors.grey[700],
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "Dart",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "Ce que je vais apprendre",
              style: TextStyle(color: const Color(0xFF092BED)),
            ),
            Column(
              spacing: 20,
              children: [
                Row(
                  spacing: 15,
                  children: [
                    Image.asset(
                      "assets/images/buck-9317347_1280.png",
                      height: 40,
                      width: 45,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flutter",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF092BED),
                          ),
                        ),
                        Text(
                          "Application mobile Android",
                          style: TextStyle(color: Color(0xFF092BED)),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  spacing: 20,
                  children: [
                    Image.asset(
                      "assets/images/dog-9670619_1280.jpg",
                      height: 40,
                      width: 45,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flutter",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF092BED),
                          ),
                        ),
                        Text(
                          "Application mobile iOS",
                          style: TextStyle(color: Color(0xFF092BED)),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  spacing: 20,
                  children: [
                    Image.asset(
                      "assets/images/forest-9685700_1280.jpg",
                      height: 40,
                      width: 45,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flutter",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF092BED),
                          ),
                        ),
                        Text(
                          "Application web",
                          style: TextStyle(color: Color(0xFF092BED)),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  spacing: 20,
                  children: [
                    Image.asset(
                      "assets/images/weizenfeld-7161095_1280.jpg",
                      height: 40,
                      width: 45,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flutter",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF092BED),
                          ),
                        ),
                        Text(
                          "Application Desktop",
                          style: TextStyle(color: Color(0xFF092BED)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
