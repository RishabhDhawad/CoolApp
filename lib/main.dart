import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  // Fetch Data from Firebase
  @override
  void initState() {
    super.initState();
  }

  // Implement Dispose
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var listView = ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          height: 500,
          width: 500,
        );
      },
      scrollDirection: Axis.vertical,
      // This functions does a infinite scroll till the last container is reached
      // When we un comment this lines of code then we will see the scroll
      // Will add this functionality in the next fix in the seperate page.
      // children: [
      //   Container(
      //     height: 5000,
      //     width: 5000,
      //     color: Colors.red,
      //   ),
      //   Container(
      //     height: 5000,
      //     width: 5000,
      //     color: Colors.green,
      //   ),
      //   Container(
      //     height: 5000,
      //     width: 5000,
      //     color: Colors.blue,
      //   ),
      //   Container(
      //     height: 5000,
      //     width: 5000,
      //     color: Colors.yellow,
      //   ),
      //   Container(
      //     height: 5000,
      //     width: 5000,
      //     color: Colors.purple,
      //   ),
      //   Container(
      //     height: 5000,
      //     width: 5000,
      //     color: Colors.orange,
      //   ),
      //   Container(
      //     height: 5000,
      //     width: 5000,
      //     color: Colors.pink,
      //   ),
      //   Container(
      //     height: 5000,
      //     width: 5000,
      //     color: Colors.brown,
      //   ),
      //   Container(
      //     height: 5000,
      //     width: 5000,
      //     color: Colors.grey,
      //   ),
      //   Container(
      //     height: 5000,
      //     width: 5000,
      //     color: Colors.black,
      //   ),
      // ],
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Is Fun"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        ),
        body: Center(
          child: Text(
            '$count',
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
