import 'package:flutter/material.dart';
import '../../app/colors.dart';
import '../../app/mediaquery.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool passwordVisible = false;
  bool passwordVisibility = false;

  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _name = TextEditingController();
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
    passwordVisibility = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          height: screenHeight(context),
          width: screenWidth(context),
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 90, right: 90, top: 30, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenWidth(context) * 0.07,
                    ),
                    Expanded(
                      child: Image(
                          height: screenHeight(context) * 0.95,
                          width: screenWidth(context) * 0.45,
                          image: AssetImage("images/img.png")),
                    ),
                    SizedBox(
                      width: screenWidth(context) * 0.3,
                      height: screenHeight(context) * 0.9,
                      child: SingleChildScrollView(
                        child: PhysicalModel(
                          color: Colors.white,
                          elevation: 8,
                          shadowColor: Color.fromARGB(255, 116, 116, 116),
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox(
                            height: screenHeight(context) * 0.85,
                            width: screenWidth(context) * 0.3,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 40, right: 40),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Hasnain Traders Company',
                                    textScaleFactor: 1.5,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(
                                    'SignUp',
                                    textScaleFactor: 1.7,
                                    style: TextStyle(
                                        color: color,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Image(
                                      height: screenHeight(context) * 0.10,
                                      width: screenWidth(context) * 0.10,
                                      image:
                                          const AssetImage("images/logo.png")),
                                  TextFormField(
                                    controller: _name,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Name is Required.";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      hintText: "Name",
                                      label: const Text("Name"),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: TextFormField(
                                      validator: (value) {
                                        final expression = RegExp(
                                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

                                        if (!expression.hasMatch(value!)) {
                                          return "The email is invalid.";
                                        }
                                        return null;
                                      },
                                      controller: _emailController,
                                      decoration: InputDecoration(
                                        hintText: 'Enter Your Email',
                                        label: const Text("Email"),
                                        suffixIcon: const Icon(Icons.email),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextFormField(
                                    obscureText: passwordVisible,
                                    decoration: InputDecoration(
                                      hintText: 'Enter Your Password',
                                      label: const Text("Password"),
                                      suffixIcon: IconButton(
                                        icon: Icon(passwordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off),
                                        onPressed: () {
                                          setState(
                                            () {
                                              passwordVisible =
                                                  !passwordVisible;
                                            },
                                          );
                                        },
                                      ),
                                      alignLabelWithHint: false,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    keyboardType: TextInputType.visiblePassword,
                                    textInputAction: TextInputAction.done,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: TextFormField(
                                      obscureText: passwordVisibility,
                                      decoration: InputDecoration(
                                        hintText: 'Confirm Your Password',
                                        label: const Text("Confirm Password"),
                                        suffixIcon: IconButton(
                                          icon: Icon(passwordVisibility
                                              ? Icons.visibility
                                              : Icons.visibility_off),
                                          onPressed: () {
                                            setState(
                                              () {
                                                passwordVisibility =
                                                    !passwordVisibility;
                                              },
                                            );
                                          },
                                        ),
                                        alignLabelWithHint: false,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      textInputAction: TextInputAction.done,
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenHeight(context) * 0.05,
                                    width: screenWidth(context) * 0.17,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: color),
                                      onPressed: () {},
                                      child: const Text(
                                        "Signup",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Text.rich(
                                        TextSpan(
                                            text: 'Already have an account ',
                                            children: [
                                              TextSpan(
                                                text: 'Login',
                                                style: TextStyle(
                                                    color: color,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ]),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: -85,
                top: -33,
                child: Container(
                  height: screenHeight(context) * 0.13,
                  width: screenWidth(context) * 0.13,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: color),
                ),
              ),
              Positioned(
                right: -80,
                bottom: -30,
                child: Container(
                  height: screenHeight(context) * 0.10,
                  width: screenWidth(context) * 0.10,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: color),
                ),
              ),
              Positioned(
                left: -100,
                top: 300,
                child: Container(
                  height: screenHeight(context) * 0.13,
                  width: screenWidth(context) * 0.13,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: color),
                ),
              ),
              Positioned(
                left: 570,
                bottom: 3,
                child: Container(
                  height: screenHeight(context) * 0.04,
                  width: screenWidth(context) * 0.04,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: color),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
