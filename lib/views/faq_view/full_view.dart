import 'package:flutter/material.dart';

import '../../modelClass/data_model.dart';
import '../utils/util.dart';



class ItgeekWidgetFullView extends StatelessWidget {
  // QuestionAnswer questionAnswer;
  // ItgeekWidgetFullView(this.questionAnswer);
  String imageSrc, title, description;
 
  ItgeekWidgetFullView(this.imageSrc, this.title, this.description);

  @override
  Widget build(BuildContext context) {
    // var textColor = Util.getColorFromHex(
    //     imageViewData.imageViewTextView!.imageViewFontColor!);
    // var bgColor = Util.getColorFromHex(imageViewData.imageViewBackgroundColor!);

    return Container(
        margin: EdgeInsets.all(5)//imageViewData.imageViewMargin!),
        // decoration: BoxDecoration(
        //   // borderRadius: BorderRadius.circular(imageViewData.imageViewRadius!),
        //   color: bgColor,
        // ),
        ,
        width: double.infinity,
  
        child: Column(children: [
     
              // Padding(
            // padding: EdgeInsets.all(imageViewData.imageViewPadding!),
            // child: 
            SizedBox(
             
              child: ClipRRect(
                // borderRadius:
                    // BorderRadius.circular(imageViewData.imageViewRadius!),
                child: Image.network(
                  imageSrc,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              // ),
                        ),
            ) ,
          title != ""
              ? Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    title!,
                    style: TextStyle(
                        // color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 17// imageViewData.imageViewTextView!.imageViewTitleFontSize!
                        ),
                  ),
                )
              : Container(),
          SizedBox(
            height: 5,
          ),
         description != ""
              ? Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    description!,
                    // questionAnswer.answer!.toString(),
                    style: TextStyle(
                        // color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0//imageViewData.imageViewTextView!.imageViewDescriptionFontSize!
                        )
                        ,
                  ),
                )
              : Container()
        ]));
  }
}
