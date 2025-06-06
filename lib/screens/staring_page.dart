import 'package:flutter/material.dart';

import '../utils/assets.dart';
import 'home_screen.dart';

class StaringPage extends StatefulWidget {
  @override
  _StaringPageState createState() => _StaringPageState();
}

class _StaringPageState extends State<StaringPage> {
  final List<String> dayImages = [
    start1,
    start2,
    start3,
    start4,
    start5,
    start6,
  ];

  late PageController controller;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    controller = PageController();
    controller.addListener(() {
      int page = controller.page?.round() ?? 0;
      if (page != currentPage) {
        setState(() {
          currentPage = page;
        });

        // // Navigate to HomeScreen when reaching the last page
        // if (currentPage == dayImages.length - 1) {
        //   Future.delayed(Duration(milliseconds: 500), () {
        //     Navigator.pushReplacement(
        //       context,
        //       MaterialPageRoute(builder: (context) => HomeScreen()),
        //     );
        //   });
        // }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'আমাদের কথা',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        backgroundColor: Colors.red[300],
      ),
      body: PageView.builder(
        controller: controller,
        itemCount: dayImages.length,
        itemBuilder: (context, index) {
          return InteractiveViewer(
            panEnabled: true,
            boundaryMargin: EdgeInsets.all(0.0),
            minScale: 0.5,
            maxScale: 4.0,
            child: Image.asset(
              dayImages[index],
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          );
        },
      ),
    );
  }
}