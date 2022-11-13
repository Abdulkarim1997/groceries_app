import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:groceries_app/modules/sing_in/sing_in_screen.dart';

import '../../shard/components/components.dart';
import '../../shard/styles/colors.dart';

class SingupScreen extends StatelessWidget {
  SingupScreen({Key? key}) : super(key: key);
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
                    'Sign Up',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Enter your credentials to continue',
                    style: TextStyle(color: grey),
                  ),
                  const SizedBox(
                    height: 68.0,
                  ),
                  defaultFormField(
                    controller: emailController,
                    type: TextInputType.name,
                    validator: (String? value) {
                      if (value!.isEmpty) return "Please enter your user name";
                    },
                    lable: 'Username',
                    prefix: Icons.person,
                  ),
                  const SizedBox(
                    height: 15.0,
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
                    height: 10.0,
                  ),
                  // Align(
                  //   alignment: Alignment.topLeft,
                  //   child: defaultTextButton(
                  //     color: black,
                  //     fontSize: 14,
                  //     function: () {
                  //       // navigateTo(context, ShopRegisterScreen());
                  //     },
                  //     text:
                  //         'By continuing you agree to our Terms of Serviceand Privacy Policy.',
                  //   ),
                  // ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 14.0,
                        color: black,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'By continuing you agree to our '),
                        TextSpan(
                            text: 'Terms of Serviced Privacy Policy.',
                            style: TextStyle(color: defaultColor)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  ConditionalBuilder(
                    condition: true,
                    builder: (context) => defaultButton(
                      name: "Sing Up",
                      context: context,
                      function: () {},
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
                      const Text('Already have an account?'),
                      defaultTextButton(
                          fontSize: 16,
                          function: () {
                            navigateTo(context, const SingInScreen());
                          },
                          text: 'Singin'),
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
