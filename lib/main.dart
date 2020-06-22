import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: Text("The Beatles!"),
              backgroundColor: Colors.green[500]),
          backgroundColor: Colors.blue,
          body: Center(
            child: Stack(
              children: <Widget>[
                Image(image: AssetImage("images/the_beatles.jpg")),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    color: Colors.black.withOpacity(0),
                  ),
                )
              ],
            ),
          ))));
}
