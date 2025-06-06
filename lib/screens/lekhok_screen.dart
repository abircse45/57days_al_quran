import 'package:flutter/material.dart';

class LekhokScreen extends StatefulWidget {
  const LekhokScreen({super.key});

  @override
  State<LekhokScreen> createState() => _LekhokScreenState();
}

class _LekhokScreenState extends State<LekhokScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.red[300],
        title: Text(
          "লেখকের সাথে যোগাযোগ",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Image.asset(
        "assets/images/developer.jpeg",
        fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
