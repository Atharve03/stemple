import 'data_model.dart';

class PageLayoutModel {
  List<PageLayout>? pageLayout;
  String? backgroundColor;
  PageLayoutModel({this.pageLayout, this.backgroundColor});

  PageLayoutModel.fromJson(Map<String, dynamic> json) {
    backgroundColor = json["BackgroundColor"];
    if (json['PageLayout'] != null) {
      pageLayout = <PageLayout>[];
      print("kkkkkkk");
      json['PageLayout'].forEach((v) {
        pageLayout!.add(new PageLayout.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pageLayout != null) {
      data['PageLayout'] = this.pageLayout!.map((v) => v.toJson()).toList();
    }
    data['BackgroundColor'] = backgroundColor;
    return data;
  }
}

class PageLayout {
  String? view;
  TextViewData? textViewData;
  ImageViewData? imageViewData;
  TextTileData? textTileData;
  SliderData? sliderData;
  CategoryData? categoryData;
  ProductData? productData;
  ButtonViewData? buttonViewData;
  VideoViewData? videoViewData;
  BlogViewData? blogViewData;
  TextListWithDetailsData? textListWithDetailsData;

  PageLayout(
      {this.view, this.textViewData, this.imageViewData, this.textTileData,
        this.sliderData,
        this.categoryData,
        this.productData,
        this.buttonViewData,
        this.videoViewData,
        this.blogViewData, this.textListWithDetailsData});

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
    sliderData = json['SliderData'] != null
        ? new SliderData.fromJson(json['SliderData'])
        : null;
    categoryData = json['CategoryData'] != null
        ? new CategoryData.fromJson(json['CategoryData'])
        : null;
    productData = json['ProductData'] != null
        ? new ProductData.fromJson(json['ProductData'])
        : null;
    buttonViewData = json['ButtonViewData'] != null
        ? new ButtonViewData.fromJson(json['ButtonViewData'])
        : null;
    videoViewData = json['VideoViewData'] != null
        ? new VideoViewData.fromJson(json['VideoViewData'])
        : null;
    blogViewData = json['BlogViewData'] != null
        ? new BlogViewData.fromJson(json['BlogViewData'])
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
    if (this.sliderData != null) {
      data['SliderData'] = this.sliderData!.toJson();
    }
    if (this.categoryData != null) {
      data['CategoryData'] = this.categoryData!.toJson();
    }
    if (this.productData != null) {
      data['ProductData'] = this.productData!.toJson();
    }
    if (this.buttonViewData != null) {
      data['ButtonViewData'] = this.buttonViewData!.toJson();
    }
    if (this.videoViewData != null) {
      data['VideoViewData'] = this.videoViewData!.toJson();
    }
    if (this.blogViewData != null) {
      data['BlogViewData'] = this.blogViewData!.toJson();
    }
    if (this.textListWithDetailsData != null) {
      data['TextListWithDetailsData'] = this.textListWithDetailsData!.toJson();
    }
    return data;
  }

}


