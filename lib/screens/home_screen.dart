// import 'package:al_quran_fifty_seven_days/utils/assets.dart';
// import 'package:flutter/material.dart';
//
// import 'day_wise_screen.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   PageController _pageController = PageController();
//   int currentPage = 0;
//
//
//
//   List<String> page1 = [
//     first_page,
//     second_page,
//     third_page,
//     fourth_page,
//     fifth_page,
//     sixth_page,
//     seventh_page,
//     eighth_page,
//   ];
//
// // Page 2: 9-16
//   List<String> page2 = [
//     ninth_page,
//     tenth_page,
//     eleventh_page,
//     twelfth_page,
//     thirteenth_page,
//     fourteenth_page,
//     fifteenth_page,
//     sixteenth_page,
//   ];
//
// // Page 3: 17-24
//   List<String> page3 = [
//     seventeenth_page,
//     eighteenth_page,
//     nineteenth_page,
//     twentieth_page,
//     twentyfirst_page,
//     twentysecond_page,
//     twentythird_page,
//     twentyfourth_page,
//   ];
//
// // Page 4: 25-32
//   List<String> page4 = [
//     twentyfifth_page,
//     twentysixth_page,
//     twentyseventh_page,
//     twentyeighth_page,
//     twentyninth_page,
//     thirtieth_page,
//     thirtyfirst_page,
//     thirtysecond_page,
//   ];
//
// // Page 5: 33-40
//   List<String> page5 = [
//     thirtythird_page,
//     thirtyfourth_page,
//     thirtyfifth_page,
//     thirtysixth_page,
//     thirtyseventh_page,
//     thirtyeighth_page,
//     thirtyninth_page,
//     fortieth_page,
//   ];
//
// // Page 6: 41-48
//   List<String> page6 = [
//     fortyfirst_page,
//     fortysecond_page,
//     fortythird_page,
//     fortyfourth_page,
//     fortyfifth_page,
//     fortysixth_page,
//     fortyseventh_page,
//     fortyeighth_page,
//   ];
//
// // Page 7: 49-56
//   List<String> page7 = [
//     fortyninth_page,
//     fiftieth_page,
//     fiftyfirst_page,
//     fiftysecond_page,
//     fiftythird_page,
//     fiftyfourth_page,
//     fiftyfifth_page,
//     fiftysixth_page,
//     fiftyseventh_page,
//     fiftyeight_page,
//     lastImage,
//   ];
//   List<String> page8 = [
//
//     others1,
//     others2,
//     others3,
//     others4,
//     others5,
//
//
//
//   ];
//
//
// // Page structure তৈরি করার getter
//   List<List<String>> get pageStructure => [
//     page1,
//     page2,
//     page3,
//     page4,
//     page5,
//     page6,
//     page7,
//     page8,
//   ];
//
//
//
//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }
//
//   Widget buildImageWidget(String imagePath, int imageIndex, int pageIndex) {
//     int absoluteIndex = pageStructure
//         .sublist(0, pageIndex)
//         .fold(0, (sum, list) => sum + list.length) + imageIndex;
//
//     return GestureDetector(
//       onTap: () {
//         // only go to DayWiseScreen if it's not the first image
//         if (!(pageIndex == 0 && imageIndex == 0)) {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => DayWiseScreen(startIndex: absoluteIndex - 1),
//             ),
//           );
//         } else {
//           print("Cover clicked");
//         }
//       },
//       child: Container(
//         margin: EdgeInsets.only(bottom: 8),
//         child: Image.asset(
//           imagePath,
//           width: double.infinity,
//           fit: BoxFit.contain,
//         ),
//       ),
//     );
//   }
//
//
//   Widget buildPageContent(List<String> pageImages, int pageIndex) {
//     return SingleChildScrollView(
//       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       child: Column(
//         children: [
//
//           SizedBox(height: 30,),
//
//           // Images list
//           ...pageImages.asMap().entries.map((entry) {
//             int imageIndex = entry.key;
//             String imagePath = entry.value;
//             return buildImageWidget(imagePath, imageIndex, pageIndex);
//           }).toList(),
//
//           SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.red[300],
//         title: Text(
//             "আয়াত কনিকা বই",
//             style: TextStyle(color: Colors.white)
//         ),
//       ),
//       body: Column(
//         children: [
//
//
//           // PageView with horizontal scrolling
//           Expanded(
//             child: PageView.builder(
//               controller: _pageController,
//               scrollDirection: Axis.horizontal, // Horizontal scroll
//               onPageChanged: (index) {
//                 setState(() {
//                   currentPage = index;
//                 });
//                 print("Page ${index + 1} এ গেছেন - ${pageStructure[index].length}টি image আছে");
//               },
//               itemCount: pageStructure.length, // 4 pages
//               itemBuilder: (context, pageIndex) {
//                 return buildPageContent(pageStructure[pageIndex], pageIndex);
//               },
//             ),
//           ),
//
//           // Navigation buttons (optional)
//           Container(
//             padding: EdgeInsets.all(16),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 // Previous button
//                 ElevatedButton(
//                   onPressed: currentPage > 0
//                       ? () {
//                     _pageController.previousPage(
//                       duration: Duration(milliseconds: 300),
//                       curve: Curves.easeInOut,
//                     );
//                   }
//                       : null,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red[300],
//                     foregroundColor: Colors.white,
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Icon(Icons.arrow_back_ios, size: 16),
//                       Text("আগের পৃষ্ঠা"),
//                     ],
//                   ),
//                 ),
//
//                 // Next button
//                 ElevatedButton(
//                   onPressed: currentPage < pageStructure.length - 1
//                       ? () {
//                     _pageController.nextPage(
//                       duration: Duration(milliseconds: 300),
//                       curve: Curves.easeInOut,
//                     );
//                   }
//                       : null,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red[300],
//                     foregroundColor: Colors.white,
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text("পরের পৃষ্ঠা"),
//                       Icon(Icons.arrow_forward_ios, size: 16),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:al_quran_fifty_seven_days/screens/27_book_screen.dart';
import 'package:al_quran_fifty_seven_days/screens/lekhok_screen.dart';
import 'package:al_quran_fifty_seven_days/screens/staring_page.dart';
import 'package:al_quran_fifty_seven_days/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import 'day_wise_screen.dart';
import 'khetmot.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController();
  int currentPage = 0;

  List<String> page1 = [
    first_page,
    second_page,
    third_page,
    fourth_page,
    fifth_page,
    sixth_page,
    seventh_page,
    eighth_page,
  ];

  // Page 2: 9-16
  List<String> page2 = [
    ninth_page,
    tenth_page,
    eleventh_page,
    twelfth_page,
    thirteenth_page,
    fourteenth_page,
    fifteenth_page,
    sixteenth_page,
  ];

  // Page 3: 17-24
  List<String> page3 = [
    seventeenth_page,
    eighteenth_page,
    nineteenth_page,
    twentieth_page,
    twentyfirst_page,
    twentysecond_page,
    twentythird_page,
    twentyfourth_page,
  ];

  // Page 4: 25-32
  List<String> page4 = [
    twentyfifth_page,
    twentysixth_page,
    twentyseventh_page,
    twentyeighth_page,
    twentyninth_page,
    thirtieth_page,
    thirtyfirst_page,
    thirtysecond_page,
  ];

  // Page 5: 33-40
  List<String> page5 = [
    thirtythird_page,
    thirtyfourth_page,
    thirtyfifth_page,
    thirtysixth_page,
    thirtyseventh_page,
    thirtyeighth_page,
    thirtyninth_page,
    fortieth_page,
  ];

  // Page 6: 41-48
  List<String> page6 = [
    fortyfirst_page,
    fortysecond_page,
    fortythird_page,
    fortyfourth_page,
    fortyfifth_page,
    fortysixth_page,
    fortyseventh_page,
    fortyeighth_page,
  ];

  // Page 7: 49-56
  List<String> page7 = [
    fortyninth_page,
    fiftieth_page,
    fiftyfirst_page,
    fiftysecond_page,
    fiftythird_page,
    fiftyfourth_page,
    fiftyfifth_page,
    fiftysixth_page,
    fiftyseventh_page,
    fiftyeight_page,
    lastImage,
  ];

  List<String> page8 = [others1, others2, others3, others4, others5];

  // Page structure তৈরি করার getter
  List<List<String>> get pageStructure => [
    page1,
    page2,
    page3,
    page4,
    page5,
    page6,
    page7,
    page8,
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget buildImageWidget(String imagePath, int imageIndex, int pageIndex) {
    int absoluteIndex =
        pageStructure
            .sublist(0, pageIndex)
            .fold(0, (sum, list) => sum + list.length) +
        imageIndex;

    return GestureDetector(
      onTap: () {
        // Special handling for page8 (index 7)
        if (pageIndex == 7) {
          // Page8 এর জন্য আলাদা handling
          switch (imageIndex) {
            case 0:
              Navigator.push(context, MaterialPageRoute(builder: (_)=> StaringPage()));

              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (_)=> BookSCreen()));
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (_)=> Khetmot()));

              break;
            case 3:
              Navigator.push(context, MaterialPageRoute(builder: (_)=> LekhokScreen()));
              break;
            case 4:
              SharePlus.instance.share(
                ShareParams(
                  text:
                      'নীচের লিংক টাচ করে আল কুরআনের আয়াত কণিকা (এন্ড্রয়েড) এপটি আপনাকে ডাউনলোড করতে অনুরোধ করছি। 01996-110515 https://play.google.com/store/apps/details?id=com.fiftysevendaysquran.app',
                ),
              );
              // আপনার others5 এর জন্য specific routing এখানে
              break;
            default:
              print("Unknown page8 image clicked");
          }
        }
        // Handle other pages normally
        else if (!(pageIndex == 0 && imageIndex == 0)) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  DayWiseScreen(startIndex: absoluteIndex - 1),
            ),
          );
        } else {
          print("Cover clicked");
        }
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 8),
        child: Image.asset(
          imagePath,
          width: double.infinity,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget buildPageContent(List<String> pageImages, int pageIndex) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          SizedBox(height: 30),
          // Images list
          ...pageImages.asMap().entries.map((entry) {
            int imageIndex = entry.key;
            String imagePath = entry.value;
            return buildImageWidget(imagePath, imageIndex, pageIndex);
          }).toList(),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: Text("আয়াত কনিকা বই", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          // PageView with horizontal scrolling
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.horizontal, // Horizontal scroll
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
                print(
                  "Page ${index + 1} এ গেছেন - ${pageStructure[index].length}টি image আছে",
                );
              },
              itemCount: pageStructure.length, // 8 pages
              itemBuilder: (context, pageIndex) {
                return buildPageContent(pageStructure[pageIndex], pageIndex);
              },
            ),
          ),

          // Navigation buttons
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Previous button
                ElevatedButton(
                  onPressed: currentPage > 0
                      ? () {
                          _pageController.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[300],
                    foregroundColor: Colors.white,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.arrow_back_ios, size: 16),
                      Text("আগের পৃষ্ঠা"),
                    ],
                  ),
                ),

                // Next button
                ElevatedButton(
                  onPressed: currentPage < pageStructure.length - 1
                      ? () {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[300],
                    foregroundColor: Colors.white,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("পরের পৃষ্ঠা"),
                      Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
