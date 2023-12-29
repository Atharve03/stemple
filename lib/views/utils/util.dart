import 'package:flutter/services.dart';

class Util {
  // A helper method to convert hex color string to Color
  static Color getColorFromHex(String colorString) {
    // Remove the '#' character if present
    colorString = colorString.replaceAll("#", "");

    // Convert hex string to Color
    return Color(int.parse(colorString, radix: 16) + 0xFF000000);
  }
}