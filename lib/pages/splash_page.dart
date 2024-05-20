import 'package:flutter/material.dart';

class SpashPage extends StatefulWidget {
  const SpashPage({super.key});

  @override
  State<SpashPage> createState() => _SpashPageState();
}

class _SpashPageState extends State<SpashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[800],
      child: const Center(
          child: CircularProgressIndicator(
        color: Colors.white54,
      )),
    );
  }
}
