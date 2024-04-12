import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

AppBar NavBarPersonalise(String titre) {
  void _BouttonPersonne() {}
  void _BouttonNotification() {}
  return AppBar(
    elevation: 0,
    centerTitle: true,
    leading: () {
      if (titre == "U-market") {
        return Icon(Icons.add_alarm_rounded);
      }
    }(),
    title: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        alignment: Alignment.center,
        child: Text(
          titre,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "avenir"),
        )),
    iconTheme: IconThemeData(color: Colors.black),
    actions: [
      IconButton(
          onPressed: _BouttonNotification, icon: Icon(Icons.notifications)),
      IconButton(onPressed: _BouttonPersonne, icon: Icon(Icons.person))
    ],
  );
}
