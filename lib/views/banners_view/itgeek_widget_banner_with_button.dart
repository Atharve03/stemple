import 'package:flutter/material.dart';

import '../../modelClass/data_model.dart';
import '../utils/util.dart';

class ItgeekWidgetBannerImageButton extends StatelessWidget {
  Function(ButtonViewData) OnClick;
  ButtonViewData buttonViewData;
  ItgeekWidgetBannerImageButton(this.buttonViewData, this.OnClick);

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
    var titleTextColor = Util.getColorFromHex(buttonViewData.styleProperties!.titleTextColor!);
    var descriptionTextColor = Util.getColorFromHex(buttonViewData.styleProperties!.descriptionTextColor!);
    var bgColor = Util.getColorFromHex(buttonViewData.styleProperties!.backgroundColor!);
    var buttonTextColor = Util.getColorFromHex(buttonViewData.buttonFontColor!);
    var buttonBackgroundColor = Util.getColorFromHex(buttonViewData.buttonBackgroundColor!);
  
    return Container(
      margin: EdgeInsets.all(buttonViewData.styleProperties!.margin!),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(buttonViewData.styleProperties!.backgroundRadius!),
        color: bgColor,
      ),
      width: double.infinity,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(buttonViewData.styleProperties!.padding!),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(buttonViewData.styleProperties!.radius!),
              child: Image.network(
                buttonViewData.styleProperties!.imageSrc!,
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
                      padding: EdgeInsets.all(buttonViewData.styleProperties!.padding!),
                      child: Text(
                        buttonViewData.title!,
                      maxLines: buttonViewData.styleProperties!.titleTextNoOfLines!,
                        style: TextStyle(
                            color: titleTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: buttonViewData.styleProperties!.titleTextFontSize!),
                      ),
                    ),
                  // ]),
                  Padding(
                    padding: EdgeInsets.all(buttonViewData.styleProperties!.padding!),
                    child: Text(
                      buttonViewData.description!,
                      maxLines: buttonViewData.styleProperties!.descriptionTextNoOfLines!,
                      style: TextStyle(
                          color: descriptionTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: buttonViewData.styleProperties!.descriptionTextFontSize!),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(
                        buttonViewData.styleProperties!.padding!),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              print("button banner clicked");
                            },
                            child: Text(
                              buttonViewData.buttonText!,
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
    var titleTextColor = Util.getColorFromHex(buttonViewData.styleProperties!.titleTextColor!);
    var descriptionTextColor = Util.getColorFromHex(buttonViewData.styleProperties!.descriptionTextColor!);
    var bgColor = Util.getColorFromHex(buttonViewData.styleProperties!.backgroundColor!);
    var buttonTextColor = Util.getColorFromHex(buttonViewData.buttonFontColor!);
    var buttonBackgroundColor = Util.getColorFromHex(buttonViewData.buttonBackgroundColor!);

    return Container(
      margin: EdgeInsets.all(buttonViewData.styleProperties!.margin!),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(buttonViewData.styleProperties!.backgroundRadius!),
        color: bgColor,
      ),
      width: double.infinity,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(buttonViewData.styleProperties!.padding!),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(buttonViewData.styleProperties!.backgroundRadius!),
              child: Image.network(
                buttonViewData.styleProperties!.imageSrc!,
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
                        buttonViewData.styleProperties!.backgroundPadding!),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              print("button banner clicked");
                            },
                            child: Text(
                              buttonViewData.buttonText!,
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
                      padding: EdgeInsets.all(buttonViewData.styleProperties!.padding!),
                      child: Text(
                        buttonViewData.title!,
                        style: TextStyle(
                            color: titleTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: buttonViewData.styleProperties!.titleTextFontSize!),
                      ),
                    ),
                  // ]),
                  Padding(
                    padding: EdgeInsets.all(buttonViewData.styleProperties!.padding!),
                    child: Text(
                      buttonViewData.description!,
                      style: TextStyle(
                          color: descriptionTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: buttonViewData.styleProperties!.descriptionTextFontSize!),
                    ),
                  ),
                 ],
              ))
        ],
      ),
    );
  }
}