// import 'package:flutter/material.dart';
// import 'package:stemple/helper/util.dart';
// import 'package:stemple/modelClass/ModelAboutUs.dart';

// class WidgetBannerText extends StatelessWidget {
//   Function(TextViewData) OnClick;
//   TextViewData textViewData;
//   WidgetBannerText(this.textViewData, this.OnClick);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//         onTap: () {
//           OnClick(textViewData);
//         },
//         child: TextView(textViewData));
//   }
// }

// class TextView extends StatelessWidget {
//   TextViewData textViewData;
//   TextView(this.textViewData);
//   @override
//   Widget build(BuildContext context) {
//     var textColor = Util.getColorFromHex(textViewData.textViewFontColor!);
//     var containerColor =
//         Util.getColorFromHex(textViewData.textViewBackgroundColor!);
//     // var imageBackgroundColor =
//     //     Util.getColorFromHex(textViewData.backgroundImageViewColor!);
//     // var textAlignment = textViewData.textAlignment!;

//     return Container(
//       margin: EdgeInsets.all(textViewData.textViewMargin!),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(textViewData.wholeViewRadius!),
//         color: containerColor,
//       ),
//       width: double.infinity,
//       child: Stack(
//         children: [
//           Padding(
//             padding: EdgeInsets.all(textViewData.textViewPadding!),
//             child: ClipRRect(
//               borderRadius:
//                   BorderRadius.circular(textViewData.wholeViewRadius!),
//               child: 
//               textViewData.backgroundImageSrc!="" ? Image.network(
//                 textViewData.backgroundImageSrc!,
//                 fit: BoxFit.cover,
//                 width: double.infinity,
//                 // color: imageBackgroundColor,
//               ) : Container( color: containerColor,),
//             ),
//           ),


//           Positioned(
//               top: 0,
//               bottom: 0,
//               left: 0,
//               right: 0,
//               child: Column(
//                 // if(textViewData.textAlignment! == "start") {

//                 // }

//                 mainAxisAlignment: MainAxisAlignment.center,
//                 // crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   //   Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//                   Container(
//                     margin: EdgeInsets.all(textViewData.textViewMargin!),
//                     padding: EdgeInsets.all(textViewData.textViewPadding!),
//                     child: Text(
//                       textAlign: TextAlign.center,
//                       textViewData.textViewTitle!,
//                       style: TextStyle(
//                           color: textColor,
//                           fontWeight: FontWeight.bold,
//                           fontSize: textViewData.textViewTitleFontSize!),
//                     ),
//                   ),
//                   // ]),
//                   Container(
//                     margin: EdgeInsets.all(textViewData.textViewMargin!),
//                     padding: EdgeInsets.all(textViewData.textViewPadding!),
//                     child: Text(
//                       textAlign: TextAlign.center,
//                       textViewData.textViewDescription!,
//                       style: TextStyle(
//                           color: textColor,
//                           fontWeight: FontWeight.bold,
//                           fontSize: textViewData.textViewDescriptionFontSize!),
//                     ),
//                   )
//                 ],
//               ))
//         ],
//       ),
//     );
//   }
// }
