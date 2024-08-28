import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fristproj/core/route_utils/route_utils.dart';
import 'package:fristproj/core/utils/colors.dart';
import 'package:fristproj/view/splash/view.dart';
import 'package:fristproj/widgets/app_button.dart';
import 'package:fristproj/widgets/app_text.dart';

class accept extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              "assets/images/accept.png",
              height: 240.31,
              width: 269.08,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Your Order has been \n accepted",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Your items has been placcd and is on \n it’s way to being processed",
              style: TextStyle(color: AppColors.darkgray, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            AppButton(
              title: "Track Order",
              onTap: () {},
              margin: EdgeInsets.fromLTRB(16, 0, 16, 0),

            ),
            SizedBox(
              height: 20,
            ),
            AppText(
              title: "Back to home",
              fontSize:18 ,
              fontWeight: FontWeight.w600,
               onTap: () => RouteUtils.pushAndRemoveAll(context, splashview()),
            ),
            SizedBox(
              height: 120,
            ),
          ],
        ),
      ),
    );
  }
}
