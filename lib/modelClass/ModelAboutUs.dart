class ModelAboutUs {
  List<AboutUsJson>? aboutUsJson;

  ModelAboutUs({this.aboutUsJson});

  ModelAboutUs.fromJson(Map<String, dynamic> json) {
    if (json['AboutUsJson'] != null) {
      aboutUsJson = <AboutUsJson>[];
      json['AboutUsJson'].forEach((v) {
        aboutUsJson!.add(new AboutUsJson.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.aboutUsJson != null) {
      data['AboutUsJson'] = this.aboutUsJson!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AboutUsJson {
  String? view;
  TextViewData? textViewData;
  ImageViewData? imageViewData;
  TextTileData? textTileData;

  AboutUsJson(
      {this.view, this.textViewData, this.imageViewData, this.textTileData});

  AboutUsJson.fromJson(Map<String, dynamic> json) {
    view = json['View'];
    textViewData = json['TextViewData'] != null
        ? new TextViewData.fromJson(json['TextViewData'])
        : null;
    imageViewData = json['ImageViewData'] != null
        ? new ImageViewData.fromJson(json['ImageViewData'])
        : null;
    textTileData = json['textTileData'] != null
        ? new TextTileData.fromJson(json['textTileData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['View'] = this.view;
    if (this.textViewData != null) {
      data['TextViewData'] = this.textViewData!.toJson();
    }
    if (this.imageViewData != null) {
      data['ImageViewData'] = this.imageViewData!.toJson();
    }
    if (this.textTileData != null) {
      data['textTileData'] = this.textTileData!.toJson();
    }
    return data;
  }
}

class TextViewData {
  String? textViewTitle;
  double? textViewTitleFontSize;
  String? textAlignment;
  String? textViewDescription;
  double? textViewDescriptionFontSize;
  String? textViewFontColor;
  String? textViewFontWeight;
  String? textViewFontType;
  int? textViewNumberOfLines;
  String? textViewBackgroundColor;
  double? textViewMargin;
  double? textViewPadding;
  String? backgroundImageSrc;
  double? wholeViewRadius;

  TextViewData(
      {this.textViewTitle,
      this.textViewTitleFontSize,
      this.textAlignment,
      this.textViewDescription,
      this.textViewDescriptionFontSize,
      this.textViewFontColor,
      this.textViewFontWeight,
      this.textViewFontType,
      this.textViewNumberOfLines,
      this.textViewBackgroundColor,
      this.textViewMargin,
      this.textViewPadding,
      this.backgroundImageSrc,
      this.wholeViewRadius});

  TextViewData.fromJson(Map<String, dynamic> json) {
    textViewTitle = json['TextViewTitle'];
    textViewTitleFontSize = json['TextViewTitleFontSize'];
    textAlignment = json['TextAlignment'];
    textViewDescription = json['TextViewDescription'];
    textViewDescriptionFontSize = json['TextViewDescriptionFontSize'];
    textViewFontColor = json['TextViewFontColor'];
    textViewFontWeight = json['TextViewFontWeight'];
    textViewFontType = json['TextViewFontType'];
    textViewNumberOfLines = json['TextViewNumberOfLines'];
    textViewBackgroundColor = json['TextViewBackgroundColor'];
    textViewMargin = json['TextViewMargin'];
    textViewPadding = json['TextViewPadding'];
    backgroundImageSrc = json['BackgroundImageSrc'];
    wholeViewRadius = json['WholeViewRadius'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TextViewTitle'] = this.textViewTitle;
    data['TextViewTitleFontSize'] = this.textViewTitleFontSize;
    data['TextAlignment'] = this.textAlignment;
    data['TextViewDescription'] = this.textViewDescription;
    data['TextViewDescriptionFontSize'] = this.textViewDescriptionFontSize;
    data['TextViewFontColor'] = this.textViewFontColor;
    data['TextViewFontWeight'] = this.textViewFontWeight;
    data['TextViewFontType'] = this.textViewFontType;
    data['TextViewNumberOfLines'] = this.textViewNumberOfLines;
    data['TextViewBackgroundColor'] = this.textViewBackgroundColor;
    data['TextViewMargin'] = this.textViewMargin;
    data['TextViewPadding'] = this.textViewPadding;
    data['BackgroundImageSrc'] = this.backgroundImageSrc;
    data['WholeViewRadius'] = this.wholeViewRadius;
    return data;
  }
}

class ImageViewData {
  String? imageViewViewType;
  String? imageViewSrc;
  double? imageViewRadius;
  String? imageViewContainerColor;
  String? imageViewBackgroundColor;
  double? imageViewMargin;
  double? imageViewPadding;
  ImageViewTextView? imageViewTextView;

  ImageViewData(
      {this.imageViewViewType,
      this.imageViewSrc,
      this.imageViewRadius,
      this.imageViewContainerColor,
      this.imageViewBackgroundColor,
      this.imageViewMargin,
      this.imageViewPadding,
      this.imageViewTextView});

  ImageViewData.fromJson(Map<String, dynamic> json) {
    imageViewViewType = json['ImageViewViewType'];
    imageViewSrc = json['ImageViewSrc'];
    imageViewRadius = json['ImageViewRadius'];
    imageViewContainerColor = json['ImageViewContainerColor'];
    imageViewBackgroundColor = json['ImageViewBackgroundColor'];
    imageViewMargin = json['ImageViewMargin'];
    imageViewPadding = json['ImageViewPadding'];
    imageViewTextView = json['ImageViewTextView'] != null
        ? new ImageViewTextView.fromJson(json['ImageViewTextView'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ImageViewViewType'] = this.imageViewViewType;
    data['ImageViewSrc'] = this.imageViewSrc;
    data['ImageViewRadius'] = this.imageViewRadius;
    data['ImageViewContainerColor'] = this.imageViewContainerColor;
    data['ImageViewBackgroundColor'] = this.imageViewBackgroundColor;
    data['ImageViewMargin'] = this.imageViewMargin;
    data['ImageViewPadding'] = this.imageViewPadding;
    if (this.imageViewTextView != null) {
      data['ImageViewTextView'] = this.imageViewTextView!.toJson();
    }
    return data;
  }
}

class ImageViewTextView {
  double? imageViewTitleFontSize;
  double? imageViewDescriptionFontSize;
  String? imageViewFontColor;
  String? imageViewFontWeight;
  String? imageViewFontType;
  int? imageViewNumberOfLines;
  String? imageViewBackgroundColor2;
  double? imageViewMargin;
  double? imageViewPadding;
  String? imageViewTitle;
  String? imageViewDescription;

  ImageViewTextView(
      {this.imageViewTitleFontSize,
      this.imageViewDescriptionFontSize,
      this.imageViewFontColor,
      this.imageViewFontWeight,
      this.imageViewFontType,
      this.imageViewNumberOfLines,
      this.imageViewBackgroundColor2,
      this.imageViewMargin,
      this.imageViewPadding,
      this.imageViewTitle,
      this.imageViewDescription});

  ImageViewTextView.fromJson(Map<String, dynamic> json) {
    imageViewTitleFontSize = json['ImageViewTitleFontSize'];
    imageViewDescriptionFontSize = json['ImageViewDescriptionFontSize'];
    imageViewFontColor = json['ImageViewFontColor'];
    imageViewFontWeight = json['ImageViewFontWeight'];
    imageViewFontType = json['ImageViewFontType'];
    imageViewNumberOfLines = json['ImageViewNumberOfLines'];
    imageViewBackgroundColor2 = json['ImageViewBackgroundColor2'];
    imageViewMargin = json['ImageViewMargin'];
    imageViewPadding = json['ImageViewPadding'];
    imageViewTitle = json['ImageViewTitle'];
    imageViewDescription = json['ImageViewDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ImageViewTitleFontSize'] = this.imageViewTitleFontSize;
    data['ImageViewDescriptionFontSize'] = this.imageViewDescriptionFontSize;
    data['ImageViewFontColor'] = this.imageViewFontColor;
    data['ImageViewFontWeight'] = this.imageViewFontWeight;
    data['ImageViewFontType'] = this.imageViewFontType;
    data['ImageViewNumberOfLines'] = this.imageViewNumberOfLines;
    data['ImageViewBackgroundColor2'] = this.imageViewBackgroundColor2;
    data['ImageViewMargin'] = this.imageViewMargin;
    data['ImageViewPadding'] = this.imageViewPadding;
    data['ImageViewTitle'] = this.imageViewTitle;
    data['ImageViewDescription'] = this.imageViewDescription;
    return data;
  }
}

class TextTileData {
  String? containerColor;
  double? margin;
  double? padding;
  double? textFontSize;
  double? wholeViewRadius;
  String? textFontColor;
  List<TextTileItems>? textTileItems;

  TextTileData(
      {this.containerColor,
      this.margin,
      this.padding,
      this.textFontSize,
      this.wholeViewRadius,
      this.textFontColor,
      this.textTileItems});

  TextTileData.fromJson(Map<String, dynamic> json) {
    containerColor = json['ContainerColor'];
    margin = json['Margin'];
    padding = json['Padding'];
    textFontSize = json['textFontSize'];
    wholeViewRadius = json['wholeViewRadius'];
    textFontColor = json['textFontColor'];
    if (json['textTileItems'] != null) {
      textTileItems = <TextTileItems>[];
      json['textTileItems'].forEach((v) {
        textTileItems!.add(new TextTileItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ContainerColor'] = this.containerColor;
    data['Margin'] = this.margin;
    data['Padding'] = this.padding;
    data['textFontSize'] = this.textFontSize;
    data['wholeViewRadius'] = this.wholeViewRadius;
    data['textFontColor'] = this.textFontColor;
    if (this.textTileItems != null) {
      data['textTileItems'] =
          this.textTileItems!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TextTileItems {
  String? iconData;
  String? text;

  TextTileItems({this.iconData, this.text});

  TextTileItems.fromJson(Map<String, dynamic> json) {
    iconData = json['IconData'];
    text = json['Text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IconData'] = this.iconData;
    data['Text'] = this.text;
    return data;
  }
}