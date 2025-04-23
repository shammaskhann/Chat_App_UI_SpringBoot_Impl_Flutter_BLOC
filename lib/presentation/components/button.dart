import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:springboot_test_bench/core/constants/app_theme.dart';

class CustomButton extends StatelessWidget {
  final bool isLoading;
  final String title;
  final VoidCallback onTap;
  final double? width;
  final double? height;
  final double? fontSize;
  final double? borderRadius;
  final Color? backgroundColor;

  const CustomButton({
    Key? key,
    required this.isLoading,
    required this.title,
    required this.onTap,
    this.width,
    this.height,
    this.fontSize,
    this.borderRadius,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        height: height ?? 50.h,
        width: width ?? 1.sw,
        decoration: BoxDecoration(
          color: backgroundColor ?? kprimaryColor,
          borderRadius: BorderRadius.circular(borderRadius ?? 15),
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator(
                  color: kWhiteColor,
                )
              : Text(
                  title,
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: fontSize ?? 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
        ),
      ),
    );
  }
}
