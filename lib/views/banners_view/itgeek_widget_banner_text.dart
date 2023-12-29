import 'package:flutter/material.dart';

import '../../modelClass/data_model.dart';
import '../utils/util.dart';

class ItgeekWidgetBannerText extends StatelessWidget {
  Function(TextViewData) OnClick;
  TextViewData textViewData;
  ItgeekWidgetBannerText(this.textViewData, this.OnClick);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        OnClick(textViewData);
      },
      child: TextView(textViewData));
  }
}

class TextView extends StatelessWidget {
  TextViewData textViewData;
  TextView(this.textViewData);
  @override
  Widget build(BuildContext context) {
    var titleTextColor = Util.getColorFromHex(textViewData.styleProperties!.titleTextColor!);
    var descriptionTextColor = Util.getColorFromHex(textViewData.styleProperties!.descriptionTextColor!);
    var bgColor = Util.getColorFromHex(textViewData.styleProperties!.backgroundColor!);

    return Container(
      margin: EdgeInsets.all(textViewData.styleProperties!.backgroundMargin!),
      padding: EdgeInsets.all(textViewData.styleProperties!.backgroundPadding!),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(textViewData.styleProperties!.backgroundRadius!),
        color: bgColor,
        image: DecorationImage(
          image: NetworkImage(
            textViewData.styleProperties!.imageSrc!,
          ),
          fit: BoxFit.cover,
        )
      ),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //   Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          textViewData.title != "" ?
          Container(
            margin: EdgeInsets.all(textViewData.styleProperties!.margin!),
            padding: EdgeInsets.all(textViewData.styleProperties!.padding!),
            child: Text(
              textAlign: TextAlign.center,
              textViewData.title!,
              maxLines: textViewData.styleProperties!.titleTextNoOfLines!,
              style: TextStyle(
                color: titleTextColor,
                fontWeight: FontWeight.bold,
                fontSize: textViewData.styleProperties!.titleTextFontSize!),
            ),
          ):Container(),
          textViewData.description!="" ?
          Container(
            margin: EdgeInsets.all(textViewData.styleProperties!.margin!),
            padding: EdgeInsets.all(textViewData.styleProperties!.padding!),
            child: Text(
              textAlign: TextAlign.center,
              textViewData.description!,
              maxLines: textViewData.styleProperties!.descriptionTextNoOfLines!,
              style: TextStyle(
                color: descriptionTextColor,
                fontWeight: FontWeight.bold,
                fontSize: textViewData.styleProperties!.descriptionTextFontSize!),
            ),
          ):Container()
        ],
      ));
  }
}
