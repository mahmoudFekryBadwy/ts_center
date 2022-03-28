import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ts/shared/componance/componance.dart';
class LoginScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
          return Scaffold(
            body: Stack(
              children: [
                Image.asset('assets/images/BG_page-0001.jpg',
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
               Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'LOGIN',
                              style: Theme.of(context).textTheme.headline4?.copyWith(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Login now to communicate with centerTS',
                              style: Theme.of(context).textTheme.bodyText1.copyWith(
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            Container(
                              color: Colors.brown,
                              child: defaultFormField(
                                controller: emailController,
                                type: TextInputType.emailAddress,
                                validate: (String value) {
                                  if (value.isEmpty) {
                                    return 'please enter your email address';
                                  }
                                },
                                label: 'Email Address',
                                prefix: Icons.email_outlined,
                              ),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              color: Colors.brown,
                              child: defaultFormField(
                                controller: passwordController,
                                type: TextInputType.visiblePassword,
                                onSubmit: (value) {
                                  if (formKey.currentState.validate()) {
                                  }
                                },
                                suffixPressed: () {
                                },
                                validate: (String value) {
                                  if (value.isEmpty) {
                                    return 'password is too short';
                                  }
                                },
                                label: 'Password',
                                prefix: Icons.lock_outline,
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            defaultButton(
                              function: () {
                                if (formKey.currentState.validate()) {
                                }
                              },
                              text: 'login',
                              isUpperCase: true,
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Don\'t have an account?',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                defaultTextButton(
                                  function: () {
                                  },
                                  text: 'register',

                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}