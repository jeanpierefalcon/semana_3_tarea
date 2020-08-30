import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/side-menu.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home(),
  theme: ThemeData(fontFamily: 'Gilroy'),

  routes: {
    '/home' : (BuildContext context) => Home(),
    '/side-menu' : (BuildContext context) => SideMenu(),
  },
));


