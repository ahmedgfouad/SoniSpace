import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final void Function()? onPressed;
  final double? width;
  final double? height;
  final double borderRadius;
  final double? titleSize;
  final Color? titleColor;
  final Color backgroundColor;
  final double? verticalPadding;
  final TextStyle? textStyle;

  const CustomButton({
    Key? key,
    required this.onPressed,
    this.titleSize,
    this.title,
    this.width,
    this.height,
    this.borderRadius = 12,
    this.titleColor ,
    this.backgroundColor = Colors.transparent,
    this.verticalPadding,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: const BorderSide(color: AppColors.white, strokeAlign: 1),
          ),
        ),
        child: Text(
          title!,

          style: textStyle!.copyWith(color: titleColor),
        ),
      ),
    );
  }
}