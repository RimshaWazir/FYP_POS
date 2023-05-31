import 'package:flutter/material.dart';
import '../../app/colors.dart';
import '../../app/mediaquery.dart';
import '../../widgets/widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool passwordVisible = false;

  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          height: screenHeight(context),
          width: screenWidth(context),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                      height: screenHeight(context) * 0.9,
                      width: screenWidth(context) * 0.5,
                      image: const AssetImage("images/img.png")),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    //White Login Container
                    child: SingleChildScrollView(
                      child: PhysicalModel(
                        color: Colors.white,
                        elevation: 8,
                        shadowColor: const Color.fromARGB(255, 116, 116, 116),
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox(
                          height: screenHeight(context) * 0.9,
                          width: screenWidth(context) * 0.3,
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Wellcome To',
                                  textScaleFactor: 1.5,
                                  style: TextStyle(color: color),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 20),
                                  child: Text(
                                    'Hasnain Traders',
                                    textScaleFactor: 1.7,
                                    style: TextStyle(
                                        color: color,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Image(
                                  height: screenHeight(context) * 0.13,
                                  width: screenWidth(context) * 0.13,
                                  image: const AssetImage("images/logo.png"),
                                ),
                                RadioButton(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, bottom: 10),
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
                                  validator: ((value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please Enter Password";
                                    }
                                    return null;
                                  }),
                                  obscureText: passwordVisible,
                                  controller: _passwordController,
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
                                            passwordVisible = !passwordVisible;
                                          },
                                        );
                                      },
                                    ),
                                    alignLabelWithHint: false,
                                    helperText:
                                        "Password must contain special character",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  keyboardType: TextInputType.visiblePassword,
                                  textInputAction: TextInputAction.done,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Text.rich(
                                        TextSpan(
                                            text: 'Forget Password',
                                            style: TextStyle(
                                              color: color,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: '?',
                                                style: TextStyle(
                                                  color: color,
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 10.0),
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text("SignIn"))),
                                SizedBox(
                                  height: screenHeight(context) * 0.01,
                                ),
                                const AccountRow(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                left: -85,
                top: -33,
                child: circles(
                  width: screenWidth(context) * 0.13,
                  height: screenHeight(context) * 0.13,
                ),
              ),
              Positioned(
                right: -80,
                bottom: -30,
                child: circles(
                  width: screenWidth(context) * 0.10,
                  height: screenHeight(context) * 0.10,
                ),
              ),
              Positioned(
                left: -100,
                top: 300,
                child: circles(
                  width: screenWidth(context) * 0.13,
                  height: screenHeight(context) * 0.13,
                ),
              ),
              Positioned(
                left: 570,
                bottom: 3,
                child: circles(
                  width: screenWidth(context) * 0.04,
                  height: screenHeight(context) * 0.04,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AccountRow extends StatelessWidget {
  const AccountRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Text.rich(
        TextSpan(text: 'Don\'t have an account ', children: [
          TextSpan(
            text: 'Signup',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 157, 9),
                fontWeight: FontWeight.bold),
          ),
        ]),
      ),
    );
  }
}
