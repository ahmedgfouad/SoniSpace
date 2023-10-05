import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class CustomTextFormField extends StatefulWidget {
  final String hint;
  final FormFieldValidator<String>? validator;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final bool isPassword;
  final bool showPrefixIcon;
  final bool showSuffixIcon;
  final int? maxLength;
  final Function()? onTap;
  final Function()? onTapPrefixIcon;
  final Function()? onTapSuffixIcon;
  final double borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final Color colorBorder;

  const CustomTextFormField({
    Key? key,
    required this.hint,
    required this.controller,
    required this.validator,
    this.isPassword = false,
    this.showSuffixIcon = false,
    this.showPrefixIcon = false,
    this.onTap,
    this.keyboardType = TextInputType.text,
    this.maxLength,
    this.prefixIcon = Icons.person,
    this.suffixIcon = Icons.person,
    this.onTapPrefixIcon,
    this.onTapSuffixIcon,
    this.borderRadius = 30,
    this.contentPadding,
    this.onChanged,
    this.onSubmitted,
    this.colorBorder = AppColors.white,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.none,
      maxLines: 1,
      maxLength: widget.maxLength,
      obscureText: widget.isPassword ? showPassword : false,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      autovalidateMode: AutovalidateMode.disabled,
      validator: widget.validator,
      decoration: InputDecoration(
        fillColor: Colors.transparent,
        focusColor: AppColors.white,
        iconColor: AppColors.white,
        filled: true,
        hintText: widget.hint,
        hintStyle: const TextStyle(
          color: AppColors.greySearch,
          fontWeight: FontWeight.w600,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(color: widget.colorBorder, width: 3),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: const BorderSide(color: AppColors.white, width: 3),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: const BorderSide(color: Colors.red, width: 0.5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: const BorderSide(color: Colors.red, width: 0.5),
        ),
        contentPadding: widget.contentPadding ??
            const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        prefixIcon: widget.showPrefixIcon
            ? Icon(
                widget.prefixIcon,
                size: 22,
                color: AppColors.white,
              )
            : null,
        //suffixIcon: getSuffixIcon(),
      ),
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onSubmitted,
    );
  }

// Widget? getSuffixIcon() {
//   if (widget.showSuffixIcon) {
//     if (!widget.isPassword) {
//       return Icon(
//         widget.suffixIcon,
//         size: 22,
//         color: Colors.lightBlue,
//       );
//     }
//     return InkWell(
//       onTap: (() {
//         setState(() {
//           showPassword = !showPassword;
//         });
//       }),
//       child: !showPassword
//           ? const Icon(Icons.visibility)
//           : const Icon(Icons.visibility_off),
//     );
//   }
//   return null;
}
// }