import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const TaskApplication());
}

class TaskApplication extends StatelessWidget {
  const TaskApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
