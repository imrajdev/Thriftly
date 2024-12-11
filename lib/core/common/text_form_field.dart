import 'package:budgeting_app/core/constants/colors.dart';
import 'package:flutter/material.dart';

Widget textFormField({
  Color fillColor = ColorCodes.lightGreen,
  String hintText = "",
  String? initialText,
  TextEditingController? controller,
  TextInputType textInputType = TextInputType.text,
  bool obscureText = false,
  IconData? icon,
  void Function()? onPressed,
  String? Function(String?)? validator,
  Widget? suffixIcon,
  bool enabled = true,
  double borderRadius = 20.0,
  double? height,
  double contentPaddingHorizontal = 16.0,
  double contentPaddingVertical = 16.0,
  void Function(String)? onChanged,
  String? prefixText,
  int maxLines = 1,
}) {
  final OutlineInputBorder border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(borderRadius),
    borderSide: BorderSide(
      color: fillColor,
    ),
  );
  return TextFormField(
    initialValue: initialText,
    controller: controller,
    keyboardType: textInputType,
    obscureText: obscureText,
    enabled: enabled,
    validator: validator,
    onChanged: onChanged,
    maxLines: maxLines,
    decoration: InputDecoration(
      prefixText: prefixText,
      suffixIcon: suffixIcon,
      fillColor: fillColor,
      filled: true,
      errorStyle: TextStyle(
        color: Colors.redAccent,
      ),
      border: border,
      enabledBorder: border,
      focusedBorder: border,
      errorBorder: border,
      focusedErrorBorder: border,
      contentPadding: EdgeInsets.symmetric(
        horizontal: contentPaddingHorizontal,
        vertical: contentPaddingVertical,
      ),
      hintText: hintText,
    ),
  );
}
