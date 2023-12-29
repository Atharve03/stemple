import 'package:stemple/modelClass/data_model.dart';

class PageLayoutModel {
  String? backgroundColor;
  String? appBarBackColor;
  String? appBarIcon;
  List<PageLayout>? pageLayout;

  PageLayoutModel(
      {this.backgroundColor,
      this.appBarBackColor,
      this.appBarIcon,
      this.pageLayout});

  PageLayoutModel.fromJson(Map<String, dynamic> json) {
    backgroundColor = json['BackgroundColor'];
    appBarBackColor = json['AppBarBackColor'];
    appBarIcon = json['AppBarIcon'];
    if (json['PageLayout'] != null) {
      pageLayout = <PageLayout>[];
      json['PageLayout'].forEach((v) {
        pageLayout!.add(new PageLayout.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['BackgroundColor'] = this.backgroundColor;
    data['AppBarBackColor'] = this.appBarBackColor;
    data['AppBarIcon'] = this.appBarIcon;
    if (this.pageLayout != null) {
      data['PageLayout'] = this.pageLayout!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PageLayout {
  String? view;
  TextViewData? textViewData;
  ImageViewData? imageViewData;
  TextTileData? textTileData;
  WebViewData? webViewData;
  SliderData? sliderData;
  ButtonViewData? buttonViewData;
  BlogViewData? blogViewData;
  VideoViewData? videoViewData;
  CategoryData? categoryData;
  ProductData? productData;
  TextListWithDetailsData? textListWithDetailsData;

  PageLayout(
      {this.view,
      this.textViewData,
      this.imageViewData,
      this.textTileData,
      this.webViewData,
      this.sliderData,
      this.buttonViewData,
      this.blogViewData,
      this.videoViewData,
      this.categoryData,
      this.productData,
      this.textListWithDetailsData});

  PageLayout.fromJson(Map<String, dynamic> json) {
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
    webViewData = json['WebViewData'] != null
        ? new WebViewData.fromJson(json['WebViewData'])
        : null;
    sliderData = json['SliderData'] != null
        ? new SliderData.fromJson(json['SliderData'])
        : null;
    buttonViewData = json['ButtonViewData'] != null
        ? new ButtonViewData.fromJson(json['ButtonViewData'])
        : null;
    blogViewData = json['BlogViewData'] != null
        ? new BlogViewData.fromJson(json['BlogViewData'])
        : null;
    videoViewData = json['VideoViewData'] != null
        ? new VideoViewData.fromJson(json['VideoViewData'])
        : null;
    categoryData = json['CategoryData'] != null
        ? new CategoryData.fromJson(json['CategoryData'])
        : null;
    productData = json['ProductData'] != null
        ? new ProductData.fromJson(json['ProductData'])
        : null;
    textListWithDetailsData = json['TextListWithDetailsData'] != null
        ? new TextListWithDetailsData.fromJson(json['TextListWithDetailsData'])
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
    if (this.webViewData != null) {
      data['WebViewData'] = this.webViewData!.toJson();
    }
    if (this.sliderData != null) {
      data['SliderData'] = this.sliderData!.toJson();
    }
    if (this.buttonViewData != null) {
      data['ButtonViewData'] = this.buttonViewData!.toJson();
    }
    if (this.blogViewData != null) {
      data['BlogViewData'] = this.blogViewData!.toJson();
    }
    if (this.videoViewData != null) {
      data['VideoViewData'] = this.videoViewData!.toJson();
    }
    if (this.categoryData != null) {
      data['CategoryData'] = this.categoryData!.toJson();
    }
    if (this.productData != null) {
      data['ProductData'] = this.productData!.toJson();
    }
    if (this.textListWithDetailsData != null) {
      data['TextListWithDetailsData'] = this.textListWithDetailsData!.toJson();
    }
    return data;
  }
}
