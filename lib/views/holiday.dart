// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:stemple/modelClass/page_layout_model.dart';


// class HolidayScreen extends StatefulWidget {
//   const HolidayScreen({super.key});

//   @override
//   State<HolidayScreen> createState() => _HolidayScreenState();
// }

// class _HolidayScreenState extends State<HolidayScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: rootBundle.loadString("assets/json/holiday.json"),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             var list = json.decode(snapshot.data!);
//             PageLayoutModel myList = PageLayoutModel.fromJson(list);

//             return SingleChildScrollView(
//               child: Container(
//                 color: const Color.fromARGB(255, 23, 23, 23),
//                 child: Column(
//                     children: myList.pageLayout!.map((element) {
                
                
//                   if (element.view == "TextView") {
//                     return WidgetBannerText(element.textViewData!, (item) {
//                       (element.textViewData);
//                       print("itemTextView $item");
//                     });
//                   }
//                   if (element.view == "ImageView") {
//                     return WidgetBannerImage(element.imageViewData!, (item) {
//                       (element.imageViewData);
//                       print("itemImageView $item");
//                     });
//                   }
//                   // if (element.view == "DetailButtonView") {
//                   //   return WidgetBannerImageButton(element.buttonViewData!, (item) {
//                   //     (element.buttonViewData);
//                   //     print("itemButtonView $item");
//                   //   });
//                   // }
//                   // if (element.view == "VideoView") {
//                   //   return WidgetBannerVideo(element.videoViewData!, (item) {
//                   //     (element.videoViewData);
//                   //     print("itemVideoView $item");
//                   //   });
//                   // }
//                   // if (element.view == "BlogView") {
//                   //   return WidgetBlogView(element.blogViewData!, (item) {
//                   //     (element.blogViewData!);
//                   //     print("itemBlogView $item");
//                   //   });
//                   // }
//                   // if (element.view == "textTile") {
//                   //   return WidgetTextTile(element.textTileData!);
//                     // , (item) {
//                     //   (element.blogViewData!);
//                     //   print("itemBlogView $item");
//                     // });
//                   // }
                
//                   return SizedBox.shrink();
//                 }).toList()),
//               ),
//             );
//           } else if (snapshot.hasError) {
//             return Text('Error loading JSON'); // Handle error
//           } else {
//             return CircularProgressIndicator(); // Show a loading indicator
//           }
//         });
//   }
// }
