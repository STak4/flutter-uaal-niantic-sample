import 'package:flutter/material.dart';

import 'flavors.dart';
import 'pages/unity_demo_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: F.title,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text(F.title)),
        body: const UnityDemoScreen(),
      ),
    );
  }
}
