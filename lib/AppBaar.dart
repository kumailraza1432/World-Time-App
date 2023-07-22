import 'package:flutter/material.dart';

class AppBars extends AppBar {
  AppBars():super(

    backgroundColor: Colors.red,
    title: Center(child: Text(
      "IMDB",
      style: TextStyle(
          fontSize: 50.0, fontWeight: FontWeight.bold,
          color: Colors.white, letterSpacing: 2.0, fontFamily: 'Inder'
      ),
    )),
  );
}