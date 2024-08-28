import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fristproj/core/extension/string.dart';
import 'package:fristproj/view/splash/view.dart';

import 'package:fristproj/main.dart';
void main() {
  runApp(const MyApp());
}
class Onbording extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Image.asset(
        'onbording'.assetsPNG,
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
