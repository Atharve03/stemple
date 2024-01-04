import 'package:flutter/material.dart';

import '../../helper/util.dart';
import '../../modelClass/data_model.dart';
import '../utils/util.dart';



class ItgeekWidgetFullView extends StatelessWidget {
  // QuestionAnswer questionAnswer;
  // ItgeekWidgetFullView(this.questionAnswer);
  String? imageSrc, title, description, textAlignment, titleTextColor, descriptionTextColor, backgroundColor, appBarColor;
  double  titleTextFontSize, descriptionTextFontSize, padding, margin;
  // ImageViewData imageViewData;
  // TextListWithDetailsData textListWithDetailsData;
 
  ItgeekWidgetFullView(this.imageSrc, this.title, this.description, this.textAlignment, this.titleTextColor, this.descriptionTextColor, this.titleTextFontSize, this.descriptionTextFontSize, this.padding, this.margin, this.backgroundColor, this.appBarColor);

  @override
  Widget build(BuildContext context) {
    // var textColor = Util.getColorFromHex(
    //     imageViewData.imageViewTextView!.imageViewFontColor!);
    // var bgColor = Util.getColorFromHex(imageViewData.imageViewBackgroundColor!);

    return Scaffold(
      appBar: AppBar(
        title: Text(title!, style: TextStyle(color: Util.getColorFromHex(titleTextColor!)),),
        backgroundColor: Util.getColorFromHex(appBarColor!),
      ),
      body: Container(
          margin: EdgeInsets.all(margin),
          // decoration: BoxDecoration(
          //   // borderRadius: BorderRadius.circular(imageViewData.imageViewRadius!),
          //   color: bgColor,
          // ),
          color: Util.getColorFromHex(backgroundColor!),
          width: double.infinity,
          child: Column(children: [
           
            imageSrc != ""
                ? 
                Padding(
              padding: EdgeInsets.all(padding!),
              child: 
              ClipRRect(
                // borderRadius:
                    // BorderRadius.circular(imageViewData.imageViewRadius!),
                child: Image.network(
                  imageSrc!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ) : Container(),
            title != ""
                ? Container(
                                    alignment:  textAlignment == "left" ? Alignment.centerLeft : textAlignment == "right" ? Alignment.centerRight : Alignment.center,

                    padding: EdgeInsets.all(padding),
                    child: Text(
                      title!,
                      style: TextStyle(
                          color: Util.getColorFromHex(titleTextColor!),
                          fontWeight: FontWeight.bold,
                          fontSize: titleTextFontSize
                          ),
                      
                    ),
                  )
                : Container(),
            SizedBox(
              height: 5,
            ),
           description != ""
                ? Container(
                    alignment:  textAlignment == "left" ? Alignment.centerLeft : textAlignment == "right" ? Alignment.centerRight : Alignment.center,

                    padding: EdgeInsets.all(5),
                    child: Text(
                      description!,
                      // questionAnswer.answer!.toString(),
                      style: TextStyle(
                          color: Util.getColorFromHex(descriptionTextColor!),
                          fontWeight: FontWeight.bold,
                          fontSize: descriptionTextFontSize
                          )
                      
                    ),
                    
                  )
                : Container()
          ])),
    );
  }
}
