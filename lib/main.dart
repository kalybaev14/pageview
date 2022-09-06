// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Anim(),
    );
  }
}

class Anim extends StatelessWidget {
  Anim({Key? key}) : super(key: key);
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextButton(
              onPressed: () {
                controller.animateToPage(0,
                    duration: Duration(seconds: 1), curve: Curves.easeInBack);
              },
              child: Text(
                'Skip',
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: PageView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          controller: controller,
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.blueGrey,
                ),
                SizedBox(
                  height: 114,
                ),
                Text(
                  'Welcome',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                    'There are so many things you have to \nexperience in your life...',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    textAlign: TextAlign.center),
              ],
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.red,
                ),
                SizedBox(
                  height: 114,
                ),
                Text(
                  'MyDay team',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                    'prepared for you list of tasks to keep yourself \nbusy and challenged every day,making it more \nfun and enjoyable',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    textAlign: TextAlign.center),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
