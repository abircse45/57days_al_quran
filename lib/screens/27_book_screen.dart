import 'package:flutter/material.dart';

import '../utils/assets.dart';
import 'home_screen.dart';

class BookSCreen extends StatefulWidget {
  @override
  _BookSCreenState createState() => _BookSCreenState();
}

class _BookSCreenState extends State<BookSCreen> {
  final List<String> dayImages = [book2,book1];

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
          '২৭ ঘন্টায় কুরআন শিক্ষা বই কিনতে চাই',
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
