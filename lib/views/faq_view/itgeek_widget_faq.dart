import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import '../../modelClass/data_model.dart';
import '../utils/util.dart';



class ItgeekWidgetFaq extends StatefulWidget {
  TextListWithDetailsData frequentlyAskedQuestions;
  ItgeekWidgetFaq(this.frequentlyAskedQuestions);
  @override
  State<ItgeekWidgetFaq> createState() => _FAQState();
}

class _FAQState extends State<ItgeekWidgetFaq> {
  // bool answerVisibility = false;
bool isExpanded=false;
  List<QuestionAnswer> listQuestionAnswer = [];
  QuestionAnswer? previous;

  @override
  Widget build(BuildContext context) {
    widget.frequentlyAskedQuestions.questionAnswer!
        .map((item) => {listQuestionAnswer.add(item)})
        .toList();

    print("listQuestionAnswer $listQuestionAnswer");
    var containerColor =
        Util.getColorFromHex(widget.frequentlyAskedQuestions.containerColor!);
    var questionFontColor = Util.getColorFromHex(
        widget.frequentlyAskedQuestions.questionFontColor!);
    var answerFontColor =
        Util.getColorFromHex(widget.frequentlyAskedQuestions.answerFontColor!);

    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(widget.frequentlyAskedQuestions.padding!),
        margin: EdgeInsets.all(widget.frequentlyAskedQuestions.margin!),
        decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(
                widget.frequentlyAskedQuestions.wholeViewRadius!)),
        child: ListView.separated(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          itemCount: listQuestionAnswer.length,
          separatorBuilder: (context, index) {
            return Divider(
              height: 2,
              color: const Color.fromARGB(255, 84, 84, 84),
            );
          },
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      if (listQuestionAnswer[index].expand!) {
                        listQuestionAnswer[index].expand = false;
                        isExpanded=false;
                        previous = null;
                      } else {
                        if (previous != null) {
                          previous!.expand = false;
                         
                        }
                         isExpanded=true;
                        listQuestionAnswer[index].expand = true;
                        previous = listQuestionAnswer[index];
                      }
                      listQuestionAnswer.clear();
                    });
                  },
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                          child: 
                      Padding(
                        padding: EdgeInsets.all(
                            widget.frequentlyAskedQuestions.padding!),
                        child: Text(
                          listQuestionAnswer[index].question!,
                          style: TextStyle(
                              color: questionFontColor,
                              fontWeight: FontWeight.bold,
                              fontSize: widget
                                  .frequentlyAskedQuestions.questionFontSize!),
                        ),
                      ),
                        ),
                      ),
                      widget.frequentlyAskedQuestions.arrowVisibility!
                          ? InkWell(
      onTap: () {
          setState(() {
                      if (listQuestionAnswer[index].expand!) {
                        listQuestionAnswer[index].expand = false;
                        isExpanded=false;
                        previous = null;
                      } else {
                        if (previous != null) {
                          previous!.expand = false;
                         
                        }
                         isExpanded=true;
                        listQuestionAnswer[index].expand = true;
                        previous = listQuestionAnswer[index];
                      }
                      listQuestionAnswer.clear();
                    });
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Transform.rotate(
          angle: listQuestionAnswer[index].expand!  ? 1.5708 : 0.0, // 90 degrees in radians
          child: Icon(
            Icons.arrow_forward_ios,
            size: 30.0,
            color: Colors.red,
          ),
        ),
      ),
    )
                          : SizedBox()
                    ],
                  ),
                ),
                listQuestionAnswer[index].expand!
                    ? Padding(
                        padding: EdgeInsets.all(
                            widget.frequentlyAskedQuestions.padding!),
                        child: Text(
                          listQuestionAnswer[index].answer!,
                          style: TextStyle(
                              color: answerFontColor,
                              fontWeight: FontWeight.bold,
                              fontSize: widget
                                  .frequentlyAskedQuestions.answerFontSize!),
                        ),
                      )
                    : Container(),
              ],
            );
          },
        ));
  }
}
