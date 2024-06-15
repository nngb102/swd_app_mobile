import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/Logo.png',
        fit: BoxFit.fill,
      ),
    );
  }
}
