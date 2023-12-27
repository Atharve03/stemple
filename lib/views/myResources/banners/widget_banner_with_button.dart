import 'package:stemple/helper/util.dart';
import 'package:stemple/modelClass/DashboardModel.dart';
import 'package:flutter/material.dart';

class WidgetBannerImageButton extends StatelessWidget {
  Function(ButtonViewData) OnClick;
  ButtonViewData buttonViewData;
  WidgetBannerImageButton(this.buttonViewData, this.OnClick);

  @override
  Widget build(BuildContext context) {
    if (buttonViewData.buttonViewViewType == "Top") {
      return InkWell(
          onTap: () {
            OnClick(buttonViewData);
          },
          child: TopText(buttonViewData));
    } else {
      return InkWell(
          onTap: () {
            OnClick(buttonViewData);
          },
          child: BottomText(buttonViewData));
    }
  }
}

class TopText extends StatelessWidget {
  ButtonViewData buttonViewData;
  TopText(this.buttonViewData);
  @override
  Widget build(BuildContext context) {
    var textColor = Util.getColorFromHex(buttonViewData.fontColor!);
    var containerColor = Util.getColorFromHex(buttonViewData.containerColor!);
    var imageBackgroundColor =
        Util.getColorFromHex(buttonViewData.backgroundImageViewColor!);
    var buttonTextColor =
        Util.getColorFromHex(buttonViewData.buttonView!.buttonFontColor!);
    var buttonBackgroundColor =
        Util.getColorFromHex(buttonViewData.buttonView!.buttonBackgroundColor!);
    var buttonRadiusColor = Util.getColorFromHex(buttonViewData.fontColor!);

    return Container(
      margin: EdgeInsets.all(buttonViewData.margin!),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(buttonViewData.wholeViewRadius!),
        color: containerColor,
      ),
      width: double.infinity,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(buttonViewData.padding!),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(buttonViewData.wholeViewRadius!),
              child: Image.network(
                buttonViewData.backgroundImageViewSrc!,
                fit: BoxFit.cover,
                width: double.infinity,
                // color: imageBackgroundColor,
              ),
            ),
          ),
          Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                //   Row(mainAxisAlignment: MainAxisAlignment.center, children: [    
                Padding(
                      padding: EdgeInsets.all(buttonViewData.padding!),
                      child: Text(
                        buttonViewData.title!,
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: buttonViewData.titleFontSize!),
                      ),
                    ),
                  // ]),
                  Padding(
                    padding: EdgeInsets.all(buttonViewData.padding!),
                    child: Text(
                      buttonViewData.description!,
                      style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: buttonViewData.descriptionFontSize!),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(
                        buttonViewData.buttonView!.buttonPadding!),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              print("button banner clicked");
                            },
                            child: Text(
                              buttonViewData.buttonView!.buttonText!,
                              style: TextStyle(
                                color: buttonTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: buttonBackgroundColor,
                            ),
                          )
                        ]),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

class BottomText extends StatelessWidget {
  ButtonViewData buttonViewData;
  BottomText(this.buttonViewData);
  @override
  Widget build(BuildContext context) {
    var textColor = Util.getColorFromHex(buttonViewData.fontColor!);
    var containerColor = Util.getColorFromHex(buttonViewData.containerColor!);
    var imageBackgroundColor =
        Util.getColorFromHex(buttonViewData.backgroundImageViewColor!);
    var buttonTextColor =
        Util.getColorFromHex(buttonViewData.buttonView!.buttonFontColor!);
    var buttonBackgroundColor =
        Util.getColorFromHex(buttonViewData.buttonView!.buttonBackgroundColor!);
    var buttonRadiusColor = Util.getColorFromHex(buttonViewData.fontColor!);

    return Container(
      margin: EdgeInsets.all(buttonViewData.margin!),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(buttonViewData.wholeViewRadius!),
        color: containerColor,
      ),
      width: double.infinity,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(buttonViewData.padding!),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(buttonViewData.wholeViewRadius!),
              child: Image.network(
                buttonViewData.backgroundImageViewSrc!,
                fit: BoxFit.cover,
                width: double.infinity,
                // color: imageBackgroundColor,
              ),
            ),
          ),
          Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Padding(
                    padding: EdgeInsets.all(
                        buttonViewData.buttonView!.buttonPadding!),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              print("button banner clicked");
                            },
                            child: Text(
                              buttonViewData.buttonView!.buttonText!,
                              style: TextStyle(
                                color: buttonTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: buttonBackgroundColor,
                            ),
                          )
                        ]),
                  ),
               
                //   Row(mainAxisAlignment: MainAxisAlignment.center, children: [    
                Padding(
                      padding: EdgeInsets.all(buttonViewData.padding!),
                      child: Text(
                        buttonViewData.title!,
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: buttonViewData.titleFontSize!),
                      ),
                    ),
                  // ]),
                  Padding(
                    padding: EdgeInsets.all(buttonViewData.padding!),
                    child: Text(
                      buttonViewData.description!,
                      style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: buttonViewData.descriptionFontSize!),
                    ),
                  ),
                 ],
              ))
        ],
      ),
    );
  }
}