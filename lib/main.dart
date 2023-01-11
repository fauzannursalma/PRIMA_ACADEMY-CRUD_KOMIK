import 'package:comic_pssi/pages/create.dart';
import 'package:comic_pssi/pages/home.dart';
import 'package:comic_pssi/pages/detail.dart';
import 'package:comic_pssi/pages/edit.dart';
import 'package:flutter/material.dart';
import '../model/comic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PSSI-Comic',
      home: Home(),
      routes: {
        '/detail': (context) => DetailComic(),
        '/create': (context) => CreateComic(),
        '/edit': (context) => EditComic(),
        '/home': (context) => Home(),
      },
    );
  }
}
