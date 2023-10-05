import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final double? width;
  final double borderRadius;
  final double? titleSize;
  final Color titleColor;
  final Color backgroundColor;
  final double? verticalPadding;
  final Color borderColor;

  const CustomButton({
    Key? key,
    required this.onPressed,
    this.titleSize,
    this.title = "",
    this.width,
    this.borderRadius = 30,
    this.titleColor = Colors.white,
    this.backgroundColor = Colors.transparent,
    this.verticalPadding,
    this.borderColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 306,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Colors.white,
              width: 3
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: verticalPadding ?? 20),
          child: Text(title,
            style: TextStyle(
              fontSize: titleSize ?? 22,
              color: titleColor,
              fontWeight: FontWeight.w600, // semi bold
            ),
          ),
        ),
      ),
    );
  }
}