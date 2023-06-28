import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  AppScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1564a1),
      body: SafeArea(
        minimum: const EdgeInsets.fromLTRB(10, 15, 10, 10),
        child: child,
      )
    );
  }

}