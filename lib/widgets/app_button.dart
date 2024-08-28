import 'package:flutter/material.dart';
import 'package:fristproj/core/extension/num.dart';
import 'package:fristproj/core/utils/colors.dart';
import 'package:fristproj/widgets/app_text.dart';
class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.title,
    this.onTap,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  final String title;
  final void Function()? onTap;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 56.height,
          alignment: Alignment.center,
          child: AppText(
            fontSize: 18,
            title: title,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(16),

          ),
        ),
      ),
    );
  }
}
