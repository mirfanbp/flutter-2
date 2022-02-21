import 'package:flutter/material.dart';
import 'package:flutter_simple_responsive_web/pages/drivers.dart';
import 'package:flutter_simple_responsive_web/pages/profile.dart';
import 'package:flutter_simple_responsive_web/controllers/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => MyHomePage(),
        '/drivers': (context) => Drivers(),
        '/profile': (context) => Profile(),
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(context) => Scaffold(
      appBar: AppBar(
        title: Text("Top Navigation"),
        backgroundColor: Colors.teal,
      ),
      drawer: MediaQuery.of(context).size.width < 768
          ? const Drawer(
              child: Menu(),
            )
          : null,
      body: SafeArea(
          child: Center(
              child: MediaQuery.of(context).size.width < 768
                  ? Content()
                  : Row(children: [
                      Container(width: 200.0, child: Menu()),
                      Container(
                          width: MediaQuery.of(context).size.width - 200.0,
                          child: Content())
                    ]))));
}

class Content extends StatelessWidget {
  // const Content({ Key? key }) : super(key: key);

  final List<String> elements = [
    "Zero",
    "Ichi",
    "Ni",
    "San",
    "Go",
    "Five",
    "Roku",
    "Nana",
    "Hachi",
    "A Million Billion Trillion",
    "A much, much longer text that will still fit"
  ];

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.builder(
        itemCount: elements.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 130.0,
          crossAxisSpacing: 16.0, // jarak samping
          mainAxisSpacing: 30.0, // jarak atas bawah
        ),
        itemBuilder: (context, i) => Card(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(elements[i]),
            ),
          ),
        ),
      ),
    );
  }
}
