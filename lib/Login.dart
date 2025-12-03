
import 'dart:math';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Detail.dart';
import 'package:flutter_ecommerce/Home_dashboard.dart';
import 'package:flutter_ecommerce/Products.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPasswordVisible = true;
  // bool _isHidden = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Center(child: Text('Invaid credentials')),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  'Email or password is incorrect!!',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.only(top: .0),
                    child: Container(
                      width: 300,
                      height: 200,
                      child: Image.asset(
                        "assets/images/login.png",
                        height: 100,
                      ),
                    ),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.1),
                  Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.05),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: emailController,

                          // decoration: InputDecoration(

                          //   enabledBorder: OutlineInputBorder(
                          //     borderRadius: BorderRadius.circular(20),
                          //     borderSide: const BorderSide(
                          //       width: 2,
                          //       color: const Color.fromARGB(255, 77, 153, 79),
                          //     ),
                          //   ),
                          //   hintText: 'Email Address',
                          //   filled: true,
                          //   fillColor: const Color(0xFFF5FCF9),
                          //   focusedBorder: OutlineInputBorder(),
                          // ),
                          decoration: InputDecoration(
                            hintText: 'Email Address',

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 77, 153, 79),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                width: 2,
                                color: Color(0xFF4D994F), // Green
                              ),
                            ),
                            filled: true,
                            fillColor: const Color(0xFFF5FCF9),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16.0 * 1.5,
                              vertical: 16.0,
                            ),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 77, 153, 79),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),

                          // decoration: InputDecoration(
                          //   enabledBorder: OutlineInputBorder(
                          //     borderRadius: BorderRadius.circular(20),
                          // borderSide: const BorderSide(
                          //   width: 2,
                          //   color: const Color.fromARGB(255, 77, 153, 79),

                          // ),
                          //   ),
                          //   hintText: 'Email Address',
                          //   filled: true,
                          //   fillColor: const Color(0xFFF5FCF9),
                          //   contentPadding: const EdgeInsets.symmetric(
                          //     horizontal: 16.0 * 1.5,
                          //     vertical: 16.0,
                          //   ),
                          // border: const OutlineInputBorder(
                          //   borderSide: BorderSide.none,
                          //   borderRadius: BorderRadius.all(
                          //     Radius.circular(50),
                          //   ),
                          // ),
                          // ),
                          keyboardType: TextInputType.name,
                          onSaved: (phone) {
                            // Save it
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: TextFormField(
                            obscureText: isPasswordVisible,
                            controller: passwordController,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              suffix: InkWell(
                                onTap: _togglePasswordView,
                                child: Icon(
                                  isPasswordVisible
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  width: 2,
                                  color: const Color.fromARGB(255, 77, 153, 79),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  width: 2,
                                  color: Color(0xFF4D994F), // Green
                                ),
                              ),

                              //hintText: 'Password',
                              filled: true,
                              fillColor: const Color(0xFFF5FCF9),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0 * 1.5,
                                vertical: 16.0,
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.name,
                            onSaved: (phone) {},
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // if(_formkey.currentState!.validate()){
                              if (emailController.text.toString() == 'a' &&
                                  passwordController.text.toString() == '123') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    // builder: (context) => const Products(),
                                    builder: (context) => const HomeDashboard(),
                                  ),
                                );
                              } else {
                                _showMyDialog();
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(400, 50),
                              side: BorderSide(
                                width: 2.0,
                                color: const Color.fromARGB(255, 77, 153, 79),
                              ),
                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 77, 153, 79),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }
}

