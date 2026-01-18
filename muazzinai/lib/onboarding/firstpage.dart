import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A1A0F),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/edited/container.png')

          ],
        ),
      )
    );
  }
}