import 'dart:io';

import 'package:flutter/material.dart';
import 'package:simple_store_checker/screens/config/config_screen.dart';
import 'package:simple_store_checker/screens/main/main_screen.dart';
import 'package:simple_store_checker/screens/splash/splash.dart';
import 'package:simple_store_checker/screens/stock/stock_screen.dart';
import 'package:simple_store_checker/utils/http_overrides.dart';
import 'package:simple_store_checker/utils/locale.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    title: lo(strStock),
    initialRoute: '/splash',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    routes: {
      '/': (context) => MainScreen(),
      '/config': (context) => ConfigScreen(),
      '/splash': (context) => const SplashScreen(),
      '/stock' : (context) => const StockScreen(),
    },
  ));
}
