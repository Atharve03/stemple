import 'dart:convert';

import 'package:stemple/helper/util.dart';
import 'package:stemple/modelClass/FAQModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WidgetFrequentlyAskedQuestions extends StatelessWidget {
  // FrequentlyAskedQuestions frequentlyAskedQuestions;
  // WidgetFrequentlyAskedQuestions(this.frequentlyAskedQuestions);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: rootBundle.loadString("assets/json/faq.json"),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          //         var list = json.decode(snapshot.data!);
          //         DashboardModel myList = DashboardModel.fromJson(list);
          //  FAQ(frequentlyAskedQuestions);

          var list = json.decode(snapshot.data!);
          FAQModel faq = FAQModel.fromJson(list);
          print("faq $faq");
          return FAQ(faq.frequentlyAskedQuestions!);
        } else if (snapshot.hasError) {
          return Text('Error loading JSON'); // Handle error
        } else {
          return CircularProgressIndicator(); // Show a loading indicator
        }
      },
    );
  }
}

class FAQ extends StatefulWidget {
  FrequentlyAskedQuestions frequentlyAskedQuestions;
  FAQ(this.frequentlyAskedQuestions);

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  // bool answerVisibility = false;

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
                        previous = null;
                      } else {
                        if (previous != null) {
                          previous!.expand = false;
                        }
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
                          ? Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromARGB(255, 146, 18, 18),
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
