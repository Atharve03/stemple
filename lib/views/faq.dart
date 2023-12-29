import 'dart:convert';

import 'package:stemple/helper/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stemple/modelClass/page_layout_model.dart';
import 'package:stemple/views/faq_view/itgeek_widget_faq.dart';

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
          PageLayoutModel faq = PageLayoutModel.fromJson(list);
          print("faq $faq");
          return ItgeekWidgetFaq(faq.pageLayout!.first.textListWithDetailsData!);
        } else if (snapshot.hasError) {
          return Text('Error loading JSON'); // Handle error
        } else {
          return CircularProgressIndicator(); // Show a loading indicator
        }
      },
    );
  }
}

