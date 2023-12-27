import 'package:flutter/material.dart';
import 'package:stemple/helper/util.dart';
import 'package:stemple/modelClass/ModelAboutUs.dart';

class WidgetBannerText extends StatelessWidget {
  Function(TextViewData) OnClick;
  TextViewData textViewData;
  WidgetBannerText(this.textViewData, this.OnClick);

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
    var textColor = Util.getColorFromHex(textViewData.textViewFontColor!);
    var containerColor =
        Util.getColorFromHex(textViewData.textViewBackgroundColor!);
    // var imageBackgroundColor =
    //     Util.getColorFromHex(textViewData.backgroundImageViewColor!);
    // var textAlignment = textViewData.textAlignment!;

    return Container(
      margin: EdgeInsets.all(textViewData.textViewMargin!),
      padding: EdgeInsets.all(textViewData.textViewPadding!),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(textViewData.wholeViewRadius!),
        color: containerColor,
        image: DecorationImage(
          image: NetworkImage(
            textViewData.backgroundImageSrc!,
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
          textViewData.textViewTitle!="" ?
          Container(
            margin: EdgeInsets.all(textViewData.textViewMargin!),
            padding: EdgeInsets.all(textViewData.textViewPadding!),
            child: Text(
              textAlign: TextAlign.center,
              textViewData.textViewTitle!,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: textViewData.textViewTitleFontSize!),
            ),
          ):Container(),
          textViewData.textViewDescription!="" ?
          Container(
            margin: EdgeInsets.all(textViewData.textViewMargin!),
            padding: EdgeInsets.all(textViewData.textViewPadding!),
            child: Text(
              textAlign: TextAlign.center,
              textViewData.textViewDescription!,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: textViewData.textViewDescriptionFontSize!),
            ),
          ):Container()
        ],
      ));
  }
}
