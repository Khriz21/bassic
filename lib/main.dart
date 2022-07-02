import 'dart:developer';

import 'package:bassic/screens/scroll_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:bassic/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Firt dessing',
      initialRoute: 'home',
      routes: {
        'basic': (_) => const BasisScreen(),
        'scroll': (_) => const ScrollScreen(),
        'home': (_) => const HomeScreen(),
      },
    );
  }
}
