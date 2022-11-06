import 'package:flutter/material.dart';

import '../styles/colors.dart';

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  String? Function(String?)? validator,
  String? lable,
  IconData? prefix,
  void Function(String)? onSubmitted,
  void Function(String)? onChanged,
  bool isPassword = false,
  IconData? suffix,
  void Function()? suffixPressed,
  bool isClickable = true,
  void Function()? onTap,
}) =>
    TextFormField(
      maxLength: 4,
      enabled: isClickable,
      validator: validator,
      controller: controller,
      onFieldSubmitted: onSubmitted,
      onChanged: onChanged,
      keyboardType: type,
      onTap: onTap,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: '- - - - ',
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: grey),
        ),
        labelText: lable,
        prefixIcon: prefix != null
            ? Icon(
                prefix,
              )
            : null,
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                ),
              )
            : null,
      ),
    );
