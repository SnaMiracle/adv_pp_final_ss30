import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecom_ss30/screens/product_list.dart';
import 'package:ecom_ss30/screens/cart_screen.dart';
import 'package:ecom_ss30/screens/navigation.dart';
import 'package:ecom_ss30/screens/login_screen.dart';
import 'package:ecom_ss30/screens/signup_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/login", // Set the initial route to login
      getPages: [
        // Login and Signup Routes
        GetPage(name: "/login", page: () => const LoginScreen(), preventDuplicates: false),
        GetPage(name: "/signup", page: () => SignUpScreen(), preventDuplicates: false),

        // Main app routes (no back arrow here)
        GetPage(name: "/products", page: () => ProductList(), preventDuplicates: false, customTransition: null),
        GetPage(name: "/cart", page: () => CartScreen(), preventDuplicates: false),
        GetPage(name: "/", page: () => const NavigationMenu(), preventDuplicates: false),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
