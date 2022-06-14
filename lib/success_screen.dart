import 'package:flutter/material.dart';
class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Success',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
        ),
      ),
    );
  }
