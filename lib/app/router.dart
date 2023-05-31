import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/product/manage_product.dart';
import '../auth/screen/sign_in.dart';
import '../auth/screen/sign_up.dart';

class AppRouter {
  static const String signIn = "/sign_in";
  static const String signUp = "/sign_up";
  static const String homePage = "/home_page";
  static const String manageProduct = "/manage_product";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signIn:
        return MaterialPageRoute(
          builder: ((context) => const SignIn()),
          settings: settings,
        );
      case signUp:
        return MaterialPageRoute(
          builder: ((context) => const Signup()),
          settings: settings,
        );

      case manageProduct:
        return MaterialPageRoute(
          builder: ((context) => Manage_Product()),
          settings: settings,
        );
    }
    return null;
  }
}
