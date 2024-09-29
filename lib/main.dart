import 'package:flutter/material.dart';
import 'package:flutter_application_1/address.dart';
import 'package:flutter_application_1/cartscreen.dart';
import 'package:flutter_application_1/createnewpass.dart';
import 'package:flutter_application_1/forgotpass.dart';
import 'package:flutter_application_1/help.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/intro_to_app.dart';
import 'package:flutter_application_1/languages.dart';
import 'package:flutter_application_1/loginandsecurity.dart';
import 'package:flutter_application_1/logo.dart';
import 'package:flutter_application_1/marketplace.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/otp.dart';
import 'package:flutter_application_1/payment.dart';
import 'package:flutter_application_1/placedorder.dart';
import 'package:flutter_application_1/prodisc.dart';
import 'package:flutter_application_1/productdisc.dart';
import 'package:flutter_application_1/productslider.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/register.dart';
import 'package:flutter_application_1/role.dart';
import 'package:flutter_application_1/services.dart';
import 'package:flutter_application_1/settings.dart';
import 'package:flutter_application_1/shop.dart';
import 'package:flutter_application_1/suclogin.dart';
import 'package:flutter_application_1/tracking.dart';
import 'package:flutter_application_1/warehouses.dart';
import 'package:flutter_application_1/wooleducation.dart';
import 'package:provider/provider.dart';

import 'package:flutter_application_1/rawwool.dart';
import 'package:flutter_application_1/categories.dart';
import 'package:flutter_application_1/farmer.dart';
import 'package:flutter_application_1/producer.dart';
import 'package:flutter_application_1/servicesreg.dart';
import 'package:flutter_application_1/marketplace_raw.dart';
import 'package:flutter_application_1/productdiscraw.dart';
import 'package:flutter_application_1/categories1.dart';
import 'package:flutter_application_1/woolprod.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'logo',
      routes: {
        'login': (context) => const Mylogin(),
        'register': (context) => const Myregister(),
        'suclogin': (context) => const Mysuccesslogin(),
        'forgotpass': (context) => const Myforgotpass(),
        'createnewpass': (context) => const Mycreatenewpass(),
        'otp': (context) => const Myotp(),
        'marketplace': (context) => const Mymarketplace(),
        'productdisc': (context) => const Myproductdisc(),
        'productslider': (context) => const Myproductslider(),
        "cartscreen": (context) => const MyCartScreen(),
        'homepage': (context) => const Myhomepage(),
        'services': (context) => const Myservices(),
        "warehouses": (context) => const Mywarehouses(),
        "intro_to_app": (context) => const Onboarding(),
        "logo": (context) => const SplashScreen(),
        "profile": (context) => const MyProfile(),
        "settings": (context) => const settingspage(),

        "loginandsecurity": (context) => const Mysecurity(),
        "address": (context) => const MyAddressPage(),

        "payment": (context) => const PaymentPage(),
        "languages": (context) => const LangPage(),
        "help": (context) => const helpPage(),
        "prodisc": (context) => const MyProdDescriptionF(),
        "placedorder": (context) => const Myplacedorder(),
        "wooleducation": (context) => const Myeducation(),
        "tracking": (context) => const Mytracking(),
        "role": (context) => const Myrole(),

        "rawwool": (context) => const YourScreen(),
        "categories": (context) => const YourCategories(),

        "farmer": (context) => const Myfarmer(),
        "producer": (context) => const Myproducer(),
        "servicesreg": (context) => const Myservicesreg(),
        "marketplace_raw": (context) => const Mymarketplaceraw(),
        "productdiscraw": (context) => const Myproductdiscraw(),
        "categories1": (context) => const YourCategories1(),
        "woolprod": (context) => const MyProdDisplay1()

        //"splash": (context) => Mysplash(),
      },
    );
  }
}
