
import 'package:flutter/material.dart';

import '../utils/assets.dart';

class DayWiseScreen extends StatelessWidget {
  final int startIndex;

  DayWiseScreen({required this.startIndex});

  final List<String> dayImages = [
    firstDay,
    secondDay,
    thirdDay,
    fourthDay,
    fifthDay,
    sixthDay,
    seventhDay,
    eighthDay,
    ninthDay,
    tenthDay,
    eleventhDay,
    twelfthDay,
    thirteenthDay,
    fourteenthDay,
    fifteenthDay,
    sixteenthDay,
    seventeenthDay,
    eighteenthDay,
    nineteenthDay,
    twentiethDay,
    twentyfirstDay,
    twentysecondDay,
    twentythirdDay,
    twentyfourthDay,
    twentyfifthDay,
    twentysixthDay,
    twentyseventhDay,
    twentyeighthDay,
    twentyninthDay,
    thirtiethDay,
    thirtyfirstDay,
    thirtysecondDay,
    thirtythirdDay,
    thirtyfourthDay,
    thirtyfifthDay,
    thirtysixthDay,
    thirtyseventhDay,
    thirtyeighthDay,
    thirtyninthDay,
    fortiethDay,
    fortyfirstDay,
    fortysecondDay,
    fortythirdDay,
    fortyfourthDay,
    fortyfifthDay,
    fortysixthDay,
    fortyseventhDay,
    fortyeighthDay,
    fortyninthDay,
    fiftiethDay,
    fiftyfirstDay,
    fiftysecondDay,
    fiftythirdDay,
    fiftyfourthDay,
    fiftyfifthDay,
    fiftysixthDay,
    fiftyseventhDay,
  ];

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: startIndex);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('দৈনিক আয়াত', style: TextStyle(fontSize: 18, color: Colors.white)),
        backgroundColor: Colors.red[300],
      ),
      body: PageView.builder(
        controller: controller,
        itemCount: dayImages.length,
        itemBuilder: (context, index) {
          return InteractiveViewer(
            panEnabled: true, // Set it to false to disable panning.
            boundaryMargin: EdgeInsets.all(0.0),
            minScale: 0.5,
            maxScale: 4.0,
            child: Image.asset(
              dayImages[index],
              fit: BoxFit.fill, // maintains full image
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          );
        },
      ),
    );
  }

}