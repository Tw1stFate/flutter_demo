// router config
import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/home_screen.dart';
import 'package:flutter_demo/pages/textfield_page.dart';
import 'package:flutter_demo/pages/button_page.dart';
import 'package:flutter_demo/pages/text_page.dart';

class RouteConfig {
  
  static const String home = '/home';
  static const String button = '/button';
  static const String text = '/text';
  static const String textField = '/textField';

  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const HomeScreen(title: 'Flutter Demo Home Page'),
    button: (BuildContext context) => const ButtonPage(),
    text: (BuildContext context) => const TextPage(),
    textField: (BuildContext context) => const TextFieldPage(),
  };
}
