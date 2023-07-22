import 'package:basic/Classes/Practice2.dart';
import 'package:basic/pages/choose_location.dart';
import 'package:basic/pages/loading.dart';
import 'package:flutter/material.dart';
import 'package:basic/Classes/Home.dart';
import 'package:basic/pages/home.dart';
import 'package:basic/Classes/Practice.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home1(),
      '/location': (context) => ChooseLocation()
    },
  ));
}