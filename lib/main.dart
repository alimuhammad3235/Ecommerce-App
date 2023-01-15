
import 'package:ecommerceapp/views/cart.dart';
import 'package:ecommerceapp/views/categoryv1.dart';
import 'package:ecommerceapp/views/home.dart';
import 'package:ecommerceapp/views/onboarding.dart';
import 'package:ecommerceapp/views/orderfailed.dart';
import 'package:ecommerceapp/views/orderreview.dart';
import 'package:ecommerceapp/views/paysuccess.dart';
import 'package:ecommerceapp/views/shipping.dart';
import 'package:ecommerceapp/views/singleprdt.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


void main(){
runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Onboard(),
    );
  }
}