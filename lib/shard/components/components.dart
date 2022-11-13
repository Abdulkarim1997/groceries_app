import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../styles/colors.dart';

Widget defaultButton({
  required String name,
  double width = double.infinity,
  double height = 40,
  Color background = defaultColor,
  double radius = 0.0,
  required void Function()? function,
  BuildContext? context,
}) =>
    Container(
      width: width,
      height: MediaQuery.of(context!).size.height * height / 797.714,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(background),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ))),
        onPressed: function,
        child: Text(
          name,
        ),
      ),
    );

Widget defaultTextButton(
        {required void Function()? function,
        required String text,
        double? fontSize,
        Color? color = Colors.black}) =>
    TextButton(
        onPressed: function,
        child: Text(text.toUpperCase()),
        style: TextButton.styleFrom(
          textStyle: TextStyle(
            color: color,
            fontSize: fontSize,
          ),
        ));

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
  int? maxLength,
  String hintText = '',
}) =>
    TextFormField(
      maxLength: maxLength,
      enabled: isClickable,
      validator: validator,
      controller: controller,
      onFieldSubmitted: onSubmitted,
      onChanged: onChanged,
      keyboardType: type,
      onTap: onTap,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
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

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
    (route) => false);
void navigateAndReplace(context, widget) => Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void showToast({
  required String text,
  required ToastStates state,
}) =>
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: chooseToastColor(state),
        textColor: Colors.white,
        fontSize: 16.0);

// enum
enum ToastStates { SUCCESS, ERROR, WARNING }

Color? chooseToastColor(ToastStates state) {
  Color? color;
  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;

    case ToastStates.ERROR:
      color = Colors.red;
      break;

    case ToastStates.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}
