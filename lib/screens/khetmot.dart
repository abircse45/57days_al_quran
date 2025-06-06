import 'package:flutter/material.dart';

class Khetmot extends StatefulWidget {
  const Khetmot({super.key});

  @override
  State<Khetmot> createState() => _KhetmotState();
}

class _KhetmotState extends State<Khetmot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.red[300],
        title: Text(
          "কুরআন এর খেদমত এ শরিক হতে চাই",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Image.asset(
        "assets/images/khetmot.jpeg",
        fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
