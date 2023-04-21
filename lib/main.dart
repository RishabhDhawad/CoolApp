import 'package:first_flutter_project/register.dart';
import 'package:flutter/material.dart';
//import 'package:./login.dart';
//import 'package:./register.dart';

import 'login.dart';

void main() {
  var routes2 = {
    'register': (context) => MyRegister(),
    'login': (context) => MyLogin(),
  };
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: routes2,
  ));
}
