import 'package:HelloWord/shared/themeData.dart';
import 'package:HelloWord/tela01_widget.dart';
import 'package:flutter/material.dart';

class Base extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello Word",
      theme: ThemeDataMentor().themeData,
      home: Tela01Widget()
    );
  }
}
