import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';

import '../../layout/layout.dart';
import '../../shard/components/components.dart';
import '../../shard/styles/colors.dart';
import '../number/number_screen.dart';
import '../sign up/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/carrot_orange.png',
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Login',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Enter your emails and password',
                    style: TextStyle(color: grey),
                  ),
                  const SizedBox(
                    height: 68.0,
                  ),
                  defaultFormField(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    validator: (String? value) {
                      if (value!.isEmpty)
                        return "Please enter your email adress";
                    },
                    lable: 'Email Adress',
                    prefix: Icons.email_outlined,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  defaultFormField(
                    controller: passwordController,
                    isPassword: true,
                    type: TextInputType.visiblePassword,
                    suffix: Icons.visibility_off_rounded,
                    suffixPressed: () {},
                    onSubmitted: (value) {},
                    validator: (String? value) {
                      if (value!.isEmpty) return "Password is too short";
                    },
                    lable: 'Password',
                    prefix: Icons.lock_outline,
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: defaultTextButton(
                      color: black,
                      fontSize: 14,
                      function: () {
                        navigateTo(context, NumberScreen());
                      },
                      text: 'Forgot Password?',
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  ConditionalBuilder(
                    condition: true,
                    builder: (context) => defaultButton(
                      name: "Log In",
                      context: context,
                      function: () {
                        navigateTo(context, const LayoutScreen());
                      },
                      width: double.infinity,
                      height: 67.0,
                      radius: 19,
                    ),
                    fallback: (contxt) =>
                        Center(child: CircularProgressIndicator()),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account?'),
                      defaultTextButton(
                          fontSize: 16,
                          function: () {
                            navigateTo(context, SingupScreen());
                          },
                          text: 'Singup'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
