import 'package:flutter/material.dart';

import '../../modelClass/data_model.dart';
import '../utils/util.dart';



class ItgeekWidgetFullView extends StatelessWidget {
  QuestionAnswer questionAnswer;
 
  ItgeekWidgetFullView(this.questionAnswer);

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
         
          // imageViewData.imageViewTextView!.imageViewTitle != ""
          //     ? Padding(
          //   padding: EdgeInsets.all(imageViewData.imageViewPadding!),
          //   child: ClipRRect(
          //     borderRadius:
          //         BorderRadius.circular(imageViewData.imageViewRadius!),
          //     child: Image.network(
          //       imageViewData.imageViewSrc!,
          //       fit: BoxFit.cover,
          //       width: double.infinity,
          //     ),
          //   ),
          // ) : Container(),
          questionAnswer.question != ""
              ? Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    questionAnswer.question!,
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
         questionAnswer.answer != ""
              ? Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    questionAnswer.answer!,
                    style: TextStyle(
                        // color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14//imageViewData.imageViewTextView!.imageViewDescriptionFontSize!
                        )
                        ,
                  ),
                )
              : Container()
        ]));
  }
}
