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
          child:TopButton(buttonViewData));
    } else {
      return InkWell(
          onTap: () {
            OnClick(buttonViewData);
          },
          child: BottomButton(buttonViewData));
    }
  }
}

class BottomButton extends StatelessWidget {
  ButtonViewData buttonViewData;
  BottomButton(this.buttonViewData);
  @override
  Widget build(BuildContext context) {
    var titleTextColor = Util.getColorFromHex(buttonViewData.styleProperties!.titleTextColor!);
    var descriptionTextColor = Util.getColorFromHex(buttonViewData.styleProperties!.descriptionTextColor!);
    var bgColor = Util.getColorFromHex(buttonViewData.styleProperties!.backgroundColor!);
    var buttonTextColor = Util.getColorFromHex(buttonViewData.buttonFontColor!);
    var buttonBackgroundColor = Util.getColorFromHex(buttonViewData.buttonBackgroundColor!);
  
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(buttonViewData.styleProperties!.margin!),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(buttonViewData.styleProperties!.backgroundRadius!),
          color: bgColor,
          image: DecorationImage(
            image: NetworkImage(buttonViewData.styleProperties!.imageSrc!), fit: BoxFit.cover,
            // Padding(
            //   padding: EdgeInsets.all(buttonViewData.styleProperties!.padding!),
            //   child: ClipRRect(
            //     borderRadius:
            //         BorderRadius.circular(buttonViewData.styleProperties!.radius!),
            //     child: Image.network(
            //       buttonViewData.styleProperties!.imageSrc!,
            //       fit: BoxFit.cover,
            //       width: double.infinity,
            //       // color: imageBackgroundColor,
            //     ),
            //   ),
            // ),
          )
        ),
        width: double.infinity,
        // child: Column(
          // children: [
          //   Positioned(
          //       top: 0,
          //       bottom: 0,
          //       left: 0,
          //       right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  //   Row(mainAxisAlignment: MainAxisAlignment.center, children: [    
                  buttonViewData.title != "" ? Padding(
                        padding: EdgeInsets.all(buttonViewData.styleProperties!.padding!),
                        child: Text(
                          buttonViewData.title!,
                        maxLines: buttonViewData.styleProperties!.titleTextNoOfLines!,
                          style: TextStyle(
                              color: titleTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: buttonViewData.styleProperties!.titleTextFontSize!),
                        ),
                      ) : Container(),
                    // ]),
                     buttonViewData.description != "" ? Padding(
                      padding: EdgeInsets.all(buttonViewData.styleProperties!.padding!),
                      child: Text(
                        buttonViewData.description!,
                        maxLines: buttonViewData.styleProperties!.descriptionTextNoOfLines!,
                        style: TextStyle(
                            color: descriptionTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: buttonViewData.styleProperties!.descriptionTextFontSize!),
                      ),
                    ) : Container(),
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
          // ],
        // ),
      // ),
    );
  }
}

class TopButton extends StatelessWidget {
  ButtonViewData buttonViewData;
  TopButton(this.buttonViewData);
  @override
  Widget build(BuildContext context) {
    var titleTextColor = Util.getColorFromHex(buttonViewData.styleProperties!.titleTextColor!);
    var descriptionTextColor = Util.getColorFromHex(buttonViewData.styleProperties!.descriptionTextColor!);
    var bgColor = Util.getColorFromHex(buttonViewData.styleProperties!.backgroundColor!);
    var buttonTextColor = Util.getColorFromHex(buttonViewData.buttonFontColor!);
    var buttonBackgroundColor = Util.getColorFromHex(buttonViewData.buttonBackgroundColor!);
  
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(buttonViewData.styleProperties!.margin!),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(buttonViewData.styleProperties!.backgroundRadius!),
          color: bgColor,
          image: DecorationImage(
            image: NetworkImage(buttonViewData.styleProperties!.imageSrc!),
            // Padding(
            //   padding: EdgeInsets.all(buttonViewData.styleProperties!.padding!),
            //   child: ClipRRect(
            //     borderRadius:
            //         BorderRadius.circular(buttonViewData.styleProperties!.radius!),
            //     child: Image.network(
            //       buttonViewData.styleProperties!.imageSrc!,
            //       fit: BoxFit.cover,
            //       width: double.infinity,
            //       // color: imageBackgroundColor,
            //     ),
            //   ),
            // ),
          )
        ),
        width: double.infinity,
        // child: Column(
          // children: [
          //   Positioned(
          //       top: 0,
          //       bottom: 0,
          //       left: 0,
          //       right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  //   Row(mainAxisAlignment: MainAxisAlignment.center, children: [    
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
                   ],
                ))
          // ],
        // ),
      // ),
    );
  }
}




  