import 'package:flutter/material.dart';

var backgrcolor = Colors.grey.shade400;
var appbarclr = Colors.grey.shade900;
var appbar = AppBar(
  backgroundColor: appbarclr,
);
var drawer = Drawer(
    child: Column(
  children: [
    SizedBox(
      height: 30,
    ),
    Icon(
      Icons.person,
      size: 80,
      color: Colors.blueGrey,
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Divider(
        color: Colors.grey.shade500,
      ),
    ),
    SizedBox(
      height: 20,
    ),
    ListTile(
      leading: Icon(
        Icons.home,
        color: Colors.blueGrey,
      ),
      title: Text('D A S H B O A R D'),
    ),
    SizedBox(
      height: 20,
    ),
    ListTile(
      leading: Icon(
        Icons.message,
        color: Colors.blueGrey,
      ),
      title: Text('M A S S A G E'),
    ),
    SizedBox(
      height: 20,
    ),
    ListTile(
      leading: Icon(
        Icons.settings,
        color: Colors.blueGrey,
      ),
      title: Text('S E T I N G'),
    ),
    SizedBox(
      height: 20,
    ),
    ListTile(
      leading: Icon(
        Icons.logout,
        color: Colors.blueGrey,
      ),
      title: Text('L O G O U T'),
    ),
  ],
));
