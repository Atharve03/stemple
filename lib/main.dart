import 'package:stemple/dashboardScreen.dart';
import 'package:flutter/material.dart';
import 'package:stemple/views/about_us.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: MyDashboard());
  }
}

class MyDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.amber,
          title: const Text("Slider Example"),
        ),
        body: Container(child: AboutUsScreen()));
  }
}
