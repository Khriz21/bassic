import 'package:bassic/screens/scroll_screen.dart';
import 'package:flutter/material.dart';

import 'package:bassic/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firt dessing',
      initialRoute: 'scroll',
      routes: {
        'home': (_) => const BasisScreen(),
        'scroll': (_) => const ScrollScreen(),
      },
    );
  }
}
