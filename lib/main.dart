import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'singleline_edit.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  MyAppState({Key? key});

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        textTheme: const TextTheme(),
      ),
      themeMode: ThemeMode.system,
      home: SafeArea(
        child: Scaffold(
          body: Builder(
            builder: (context) => const MinimalTextEdit(
              textLine: 'Hello world',
              title: 'Testing',
              hintText: 'Type Here',
              textAlign: TextAlign.center,
              maxLines: null,
            ),
          ),
        ),
      ),
    );
  }
}
