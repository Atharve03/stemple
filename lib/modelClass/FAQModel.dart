class FAQModel {
  FrequentlyAskedQuestions? frequentlyAskedQuestions;

  FAQModel({this.frequentlyAskedQuestions});

  FAQModel.fromJson(Map<String, dynamic> json) {
    frequentlyAskedQuestions = json['FrequentlyAskedQuestions'] != null
        ? new FrequentlyAskedQuestions.fromJson(
            json['FrequentlyAskedQuestions'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.frequentlyAskedQuestions != null) {
      data['FrequentlyAskedQuestions'] =
          this.frequentlyAskedQuestions!.toJson();
    }
    return data;
  }
}

class FrequentlyAskedQuestions {
  String? containerColor;
  double? margin;
  double? padding;
  double? questionFontSize;
  double? answerFontSize;
  double? wholeViewRadius;
  String? questionFontColor;
  String? answerFontColor;
  bool? arrowVisibility;
  List<QuestionAnswer>? questionAnswer;

  FrequentlyAskedQuestions(
      {this.containerColor,
      this.margin,
      this.padding,
      this.questionFontSize,
      this.answerFontSize,
      this.wholeViewRadius,
      this.questionFontColor,
      this.answerFontColor,
      this.arrowVisibility,
      this.questionAnswer});

  FrequentlyAskedQuestions.fromJson(Map<String, dynamic> json) {
    containerColor = json['ContainerColor'];
    margin = json['Margin'];
    padding = json['Padding'];
    questionFontSize = json['QuestionFontSize'];
    answerFontSize = json['AnswerFontSize'];
    wholeViewRadius = json['wholeViewRadius'];
    questionFontColor = json['QuestionFontColor'];
    answerFontColor = json['AnswerFontColor'];
    arrowVisibility = json['ArrowVisibility'];
    if (json['QuestionAnswer'] != null) {
      questionAnswer = <QuestionAnswer>[];
      json['QuestionAnswer'].forEach((v) {
        questionAnswer!.add(new QuestionAnswer.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ContainerColor'] = this.containerColor;
    data['Margin'] = this.margin;
    data['Padding'] = this.padding;
    data['QuestionFontSize'] = this.questionFontSize;
    data['AnswerFontSize'] = this.answerFontSize;
    data['wholeViewRadius'] = this.wholeViewRadius;
    data['QuestionFontColor'] = this.questionFontColor;
    data['AnswerFontColor'] = this.answerFontColor;
    data['ArrowVisibility'] = this.arrowVisibility;
    if (this.questionAnswer != null) {
      data['QuestionAnswer'] =
          this.questionAnswer!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class QuestionAnswer {
  String? question;
  String? answer;
  bool? expand;

  QuestionAnswer({this.question, this.answer});

  QuestionAnswer.fromJson(Map<String, dynamic> json) {
    question = json['Question'];
    answer = json['Answer'];
    expand = json['Expand'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Question'] = this.question;
    data['Answer'] = this.answer;
    data['Expand'] = this.expand;
    return data;
  }
}