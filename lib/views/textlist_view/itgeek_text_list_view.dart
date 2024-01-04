import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import '../../helper/util.dart';
import '../../modelClass/data_model.dart';
import '../utils/util.dart';

class ItgeekWidgetTextTile extends StatelessWidget {
  TextTileData textTileData;
  ItgeekWidgetTextTile(this.textTileData);

  List<TextTileItems> listText = [];

  @override
  Widget build(BuildContext context) {
    textTileData.textTileItems!.map((item) => {listText.add(item)}).toList();

    // print("listText $listText");
    var containerColor = Util.getColorFromHex(textTileData.styleProperties!.backgroundColor!);
    var textFontColor = Util.getColorFromHex(textTileData.styleProperties!.titleTextColor!);

    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(textTileData.styleProperties!.padding!),
        margin: EdgeInsets.all(textTileData.styleProperties!.margin!),
        decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(textTileData.styleProperties!.radius!)),
        child: ListView.separated(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          itemCount: listText.length,
          separatorBuilder: (context, index) {
            return Divider(
              height: 2,
              color: const Color.fromARGB(255, 84, 84, 84),
            );
          },
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                listText[index].iconData!,
                style: TextStyle(
                    color: Color.fromARGB(255, 129, 9, 1), fontSize: 18),
              )
              // Icon(
              //   Icons.arrow_drop_down_outlined,
              //   color: Color.fromARGB(255, 161, 14, 3),
              // ),
              ,
              title: Padding(
                padding: EdgeInsets.all(textTileData.styleProperties!.padding!),
                child: Text(
                  listText[index].text!,
                  style: TextStyle(
                      color: textFontColor,
                      fontWeight: FontWeight.bold,
                      fontSize: textTileData.styleProperties!.titleTextFontSize),
                ),
              ),
            );
          },
        ));
  }
}
