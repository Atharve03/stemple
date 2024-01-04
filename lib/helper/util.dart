import 'package:flutter/services.dart';

// class Util {
//   // A helper method to convert hex color string to Color
//   static Color getColorFromHex(String colorString) {
//     // Remove the '#' character if present
//     var hexColor = colorString.replaceAll("#", "");
//     if (hexColor.length == 6) {
//       hexColor = "FF" + hexColor;
//     }
//     if (hexColor.length == 8) {
//       return Color(int.parse("0x$hexColor"));
//     }
//   }
// }


class Util{
 static getColorFromHex(String hex) {
    var hexColor = hex.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}