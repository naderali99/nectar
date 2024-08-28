import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fristproj/core/extension/num.dart';
import 'package:fristproj/core/route_utils/route_utils.dart';
import 'package:fristproj/core/utils/colors.dart';
import 'package:fristproj/view/onborading/onbording.dart';
import 'package:fristproj/view/splash/view.dart';

class splashview extends StatefulWidget {
  const splashview({super.key});

  @override
  State<splashview> createState() => _splashviewState();
}

class _splashviewState extends State<splashview> {

  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      RouteUtils.pushAndRemoveAll(context, Onbording());
    });
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body:
      Center(
        child:
        Image.asset(
          'assets/images/logo.png',
          height: 86.height,
          width: 268.width,
        ),

      ),


    );
  }
}
