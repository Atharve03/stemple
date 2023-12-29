class SliderData {
  String? sliderIndicatorSelectedColor;
  String? sliderIndicatorUnSelectedColor;
  double? sliderViewPortFraction;
  bool? sliderAutoPlay;
  double? sliderPadding;
  String? sliderViewType;
  List<SliderItems>? sliderItems;

  SliderData(
      {this.sliderIndicatorSelectedColor,
      this.sliderIndicatorUnSelectedColor,
      this.sliderViewPortFraction,
      this.sliderAutoPlay,
      this.sliderPadding,
      this.sliderViewType,
      this.sliderItems});

  SliderData.fromJson(Map<String, dynamic> json) {
    sliderIndicatorSelectedColor = json['SliderIndicatorSelectedColor'];
    sliderIndicatorUnSelectedColor = json['SliderIndicatorUnSelectedColor'];
    sliderViewPortFraction = json['SliderViewPortFraction'];
    sliderAutoPlay = json['SliderAutoPlay'];
    sliderPadding = json['SliderPadding'];
    sliderViewType = json['SliderViewType'];
    if (json['SliderItems'] != null) {
      sliderItems = <SliderItems>[];
      json['SliderItems'].forEach((v) {
        sliderItems!.add(new SliderItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['SliderIndicatorSelectedColor'] = this.sliderIndicatorSelectedColor;
    data['SliderIndicatorUnSelectedColor'] =
        this.sliderIndicatorUnSelectedColor;
    data['SliderViewPortFraction'] = this.sliderViewPortFraction;
    data['SliderAutoPlay'] = this.sliderAutoPlay;
    data['SliderPadding'] = this.sliderPadding;
    data['SliderViewType'] = this.sliderViewType;
    if (this.sliderItems != null) {
      data['SliderItems'] = this.sliderItems!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SliderItems {
  String? sliderType;
  String? sliderText;
  String? sliderLink;
  String? sliderButtonText;
  String? sliderButtonColor;
  String? sliderBackgroundColor;
  String? sliderBannerType;
  int? sliderBannerUID;
  String? sliderButtonClicked;

  SliderItems(
      {this.sliderType,
      this.sliderText,
      this.sliderLink,
      this.sliderButtonText,
      this.sliderButtonColor,
      this.sliderBackgroundColor,
      this.sliderBannerType,
      this.sliderBannerUID,
      this.sliderButtonClicked});

  SliderItems.fromJson(Map<String, dynamic> json) {
    sliderType = json['SliderType'];
    sliderText = json['SliderText'];
    sliderLink = json['SliderLink'];
    sliderButtonText = json['SliderButtonText'];
    sliderButtonColor = json['SliderButtonColor'];
    sliderBackgroundColor = json['SliderBackgroundColor'];
    sliderBannerType = json['SliderBannerType'];
    sliderBannerUID = json['SliderBannerUID'];
    sliderButtonClicked = json['SliderButtonClicked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['SliderType'] = this.sliderType;
    data['SliderText'] = this.sliderText;
    data['SliderLink'] = this.sliderLink;
    data['SliderButtonText'] = this.sliderButtonText;
    data['SliderButtonColor'] = this.sliderButtonColor;
    data['SliderBackgroundColor'] = this.sliderBackgroundColor;
    data['SliderBannerType'] = this.sliderBannerType;
    data['SliderBannerUID'] = this.sliderBannerUID;
    data['SliderButtonClicked'] = this.sliderButtonClicked;
    return data;
  }
}

class CategoryData {
  String? categoryImageBackgroundColor;
  String? categoryTextColor;
  double? categoryFontSize;
  double? categoryImageRadius;
  String? categoryViewBackgroundColor;
  String? categoryContainerBackgroundColor;
  bool? categoryAllVisible;
  String? categoryLinkType;
  List<CategoryItems>? categoryItems;

  CategoryData(
      {this.categoryImageBackgroundColor,
      this.categoryTextColor,
      this.categoryFontSize,
      this.categoryImageRadius,
      this.categoryViewBackgroundColor,
      this.categoryContainerBackgroundColor,
      this.categoryAllVisible,
      this.categoryLinkType,
      this.categoryItems});

  CategoryData.fromJson(Map<String, dynamic> json) {
    categoryImageBackgroundColor = json['CategoryImageBackgroundColor'];
    categoryTextColor = json['CategoryTextColor'];
    categoryFontSize = json['CategoryFontSize'];
    categoryImageRadius = json['CategoryImageRadius'];
    categoryViewBackgroundColor = json['CategoryViewBackgroundColor'];
    categoryContainerBackgroundColor = json['CategoryContainerBackgroundColor'];
    categoryAllVisible = json['CategoryAllVisible'];
    categoryLinkType = json['CategoryLinkType'];
    if (json['CategoryItems'] != null) {
      categoryItems = <CategoryItems>[];
      json['CategoryItems'].forEach((v) {
        categoryItems!.add(new CategoryItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CategoryImageBackgroundColor'] = this.categoryImageBackgroundColor;
    data['CategoryTextColor'] = this.categoryTextColor;
    data['CategoryFontSize'] = this.categoryFontSize;
    data['CategoryImageRadius'] = this.categoryImageRadius;
    data['CategoryViewBackgroundColor'] = this.categoryViewBackgroundColor;
    data['CategoryContainerBackgroundColor'] =
        this.categoryContainerBackgroundColor;
    data['CategoryAllVisible'] = this.categoryAllVisible;
    data['CategoryLinkType'] = this.categoryLinkType;
    if (this.categoryItems != null) {
      data['CategoryItems'] =
          this.categoryItems!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryItems {
  String? categoryImageLink;
  String? categoryLinkHandle;
  int? categoryLinkId;
  String? categoryTitleText;

  CategoryItems(
      {this.categoryImageLink,
      this.categoryLinkHandle,
      this.categoryLinkId,
      this.categoryTitleText});

  CategoryItems.fromJson(Map<String, dynamic> json) {
    categoryImageLink = json['CategoryImageLink'];
    categoryLinkHandle = json['CategoryLinkHandle'];
    categoryLinkId = json['CategoryLinkId'];
    categoryTitleText = json['CategoryTitleText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CategoryImageLink'] = this.categoryImageLink;
    data['CategoryLinkHandle'] = this.categoryLinkHandle;
    data['CategoryLinkId'] = this.categoryLinkId;
    data['CategoryTitleText'] = this.categoryTitleText;
    return data;
  }
}

class ProductData {
  String? productImageBackgroundColor;
  String? productTextColor;
  double? productFontSize;
  double? productImageRadius;
  String? productViewBackgroundColor;
  String? productContainerBackgroundColor;
  bool? productAllVisible;
  String? productLinkType;
  List<ProductItems>? productItems;

  ProductData(
      {this.productImageBackgroundColor,
      this.productTextColor,
      this.productFontSize,
      this.productImageRadius,
      this.productViewBackgroundColor,
      this.productContainerBackgroundColor,
      this.productAllVisible,
      this.productLinkType,
      this.productItems});

  ProductData.fromJson(Map<String, dynamic> json) {
    productImageBackgroundColor = json['ProductImageBackgroundColor'];
    productTextColor = json['ProductTextColor'];
    productFontSize = json['ProductFontSize'];
    productImageRadius = json['ProductImageRadius'];
    productViewBackgroundColor = json['ProductViewBackgroundColor'];
    productContainerBackgroundColor = json['ProductContainerBackgroundColor'];
    productAllVisible = json['ProductAllVisible'];
    productLinkType = json['ProductLinkType'];
    if (json['ProductItems'] != null) {
      productItems = <ProductItems>[];
      json['ProductItems'].forEach((v) {
        productItems!.add(new ProductItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ProductImageBackgroundColor'] = this.productImageBackgroundColor;
    data['ProductTextColor'] = this.productTextColor;
    data['ProductFontSize'] = this.productFontSize;
    data['ProductImageRadius'] = this.productImageRadius;
    data['ProductViewBackgroundColor'] = this.productViewBackgroundColor;
    data['ProductContainerBackgroundColor'] =
        this.productContainerBackgroundColor;
    data['ProductAllVisible'] = this.productAllVisible;
    data['ProductLinkType'] = this.productLinkType;
    if (this.productItems != null) {
      data['ProductItems'] = this.productItems!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProductItems {
  String? productImageLink;
  String? productLinkHandle;
  int? productLinkId;
  double? productPrice;
  String? productTitleText;

  ProductItems(
      {this.productImageLink,
      this.productLinkHandle,
      this.productLinkId,
      this.productPrice,
      this.productTitleText});

  ProductItems.fromJson(Map<String, dynamic> json) {
    productImageLink = json['ProductImageLink'];
    productLinkHandle = json['ProductLinkHandle'];
    productLinkId = json['ProductLinkId'];
    productPrice = json['ProductPrice'];
    productTitleText = json['ProductTitleText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ProductImageLink'] = this.productImageLink;
    data['ProductLinkHandle'] = this.productLinkHandle;
    data['ProductLinkId'] = this.productLinkId;
    data['ProductPrice'] = this.productPrice;
    data['ProductTitleText'] = this.productTitleText;
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
    textViewTitleFontSize =
        double.parse(json['TextViewTitleFontSize'].toString());
    textAlignment = json['TextAlignment'];
    textViewDescription = json['TextViewDescription'];
    textViewDescriptionFontSize =
        double.parse(json['TextViewDescriptionFontSize'].toString());
    textViewFontColor = json['TextViewFontColor'];
    textViewFontWeight = json['TextViewFontWeight'];
    textViewFontType = json['TextViewFontType'];
    textViewNumberOfLines = json['TextViewNumberOfLines'];
    textViewBackgroundColor = json['TextViewBackgroundColor'];
    textViewMargin = double.parse(json['TextViewMargin'].toString());
    textViewPadding = double.parse(json['TextViewPadding'].toString());
    backgroundImageSrc = json['BackgroundImageSrc'];
    wholeViewRadius = double.parse(json['WholeViewRadius'].toString());
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
  String? imageViewSrc;
  double? imageViewRadius;
  String? imageViewContainerColor;
  String? imageViewBackgroundColor;
  double? imageViewMargin;
  double? imageViewPadding;
  ImageViewTextView? imageViewTextView;
  String? imageViewViewType;

  ImageViewData(
      {this.imageViewSrc,
      this.imageViewRadius,
      this.imageViewContainerColor,
      this.imageViewBackgroundColor,
      this.imageViewMargin,
      this.imageViewPadding,
      this.imageViewTextView,
      this.imageViewViewType});

  ImageViewData.fromJson(Map<String, dynamic> json) {
    imageViewSrc = json['ImageViewSrc'];
    imageViewRadius = double.parse(json['ImageViewRadius'].toString());
    imageViewContainerColor = json['ImageViewContainerColor'];
    imageViewBackgroundColor = json['ImageViewBackgroundColor'];
    imageViewMargin = double.parse(json['ImageViewMargin'].toString());
    imageViewPadding = double.parse(json['ImageViewPadding'].toString());
    imageViewTextView = json['ImageViewTextView'] != null
        ? new ImageViewTextView.fromJson(json['ImageViewTextView'])
        : null;
    imageViewViewType = json['ImageViewViewType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ImageViewSrc'] = this.imageViewSrc;
    data['ImageViewRadius'] = this.imageViewRadius;
    data['ImageViewContainerColor'] = this.imageViewContainerColor;
    data['ImageViewBackgroundColor'] = this.imageViewBackgroundColor;
    data['ImageViewMargin'] = this.imageViewMargin;
    data['ImageViewPadding'] = this.imageViewPadding;
    if (this.imageViewTextView != null) {
      data['ImageViewTextView'] = this.imageViewTextView!.toJson();
    }
    data['ImageViewViewType'] = this.imageViewViewType;
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
    imageViewTitleFontSize =
        double.parse(json['ImageViewTitleFontSize'].toString());
    imageViewDescriptionFontSize =
        double.parse(json['ImageViewDescriptionFontSize'].toString());
    imageViewFontColor = json['ImageViewFontColor'];
    imageViewFontWeight = json['ImageViewFontWeight'];
    imageViewFontType = json['ImageViewFontType'];
    imageViewNumberOfLines = json['ImageViewNumberOfLines'];
    imageViewBackgroundColor2 = json['ImageViewBackgroundColor2'];
    imageViewMargin = double.parse(json['ImageViewMargin'].toString());
    imageViewPadding = double.parse(json['ImageViewPadding'].toString());
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
    data['ImageViewDescriptionFontSize'] = this.imageViewDescriptionFontSize;
    return data;
  }
}

class ButtonViewData {
  String? buttonViewViewType;
  String? backgroundImageViewSrc;
  double? wholeViewRadius;
  String? containerColor;
  String? backgroundImageViewColor;
  double? margin;
  double? padding;
  String? fontColor;
  double? titleFontSize;
  double? descriptionFontSize;
  String? title;
  String? description;
  int? numberOfLines;
  ButtonView? buttonView;

  ButtonViewData(
      {this.buttonViewViewType,
      this.backgroundImageViewSrc,
      this.wholeViewRadius,
      this.containerColor,
      this.backgroundImageViewColor,
      this.margin,
      this.padding,
      this.fontColor,
      this.titleFontSize,
      this.descriptionFontSize,
      this.title,
      this.description,
      this.numberOfLines,
      this.buttonView});

  ButtonViewData.fromJson(Map<String, dynamic> json) {
    buttonViewViewType = json['ButtonViewViewType'];
    backgroundImageViewSrc = json['BackgroundImageViewSrc'];
    wholeViewRadius = double.parse(json['WholeViewRadius'].toString());
    containerColor = json['ContainerColor'];
    backgroundImageViewColor = json['BackgroundImageViewColor'];
    margin = double.parse(json['Margin'].toString());
    padding = double.parse(json['Padding'].toString());
    fontColor = json['FontColor'];
    titleFontSize = double.parse(json['TitleFontSize'].toString());
    descriptionFontSize = double.parse(json['DescriptionFontSize'].toString());
    title = json['Title'];
    description = json['Description'];
    numberOfLines = json['NumberOfLines'];
    buttonView = json['ButtonView'] != null
        ? new ButtonView.fromJson(json['ButtonView'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ButtonViewViewType'] = this.buttonViewViewType;
    data['BackgroundImageViewSrc'] = this.backgroundImageViewSrc;
    data['WholeViewRadius'] = this.wholeViewRadius;
    data['ContainerColor'] = this.containerColor;
    data['BackgroundImageViewColor'] = this.backgroundImageViewColor;
    data['Margin'] = this.margin;
    data['Padding'] = this.padding;
    data['FontColor'] = this.fontColor;
    data['TitleFontSize'] = this.titleFontSize;
    data['DescriptionFontSize'] = this.descriptionFontSize;
    data['Title'] = this.title;
    data['Description'] = this.description;
    data['NumberOfLines'] = this.numberOfLines;
    if (this.buttonView != null) {
      data['ButtonView'] = this.buttonView!.toJson();
    }
    return data;
  }
}

class ButtonView {
  double? buttonRadius;
  String? buttonRadiusColor;
  String? buttonFontColor;
  String? buttonFontWeight;
  String? buttonBackgroundColor;
  double? buttonMargin;
  double? buttonPadding;
  String? buttonText;

  ButtonView(
      {this.buttonRadius,
      this.buttonRadiusColor,
      this.buttonFontColor,
      this.buttonFontWeight,
      this.buttonBackgroundColor,
      this.buttonMargin,
      this.buttonPadding,
      this.buttonText});

  ButtonView.fromJson(Map<String, dynamic> json) {
    buttonRadius = double.parse(json['ButtonRadius'].toString());
    buttonRadiusColor = json['ButtonRadiusColor'];
    buttonFontColor = json['ButtonFontColor'];
    buttonFontWeight = json['ButtonFontWeight'];
    buttonBackgroundColor = json['ButtonBackgroundColor'];
    buttonMargin = double.parse(json['ButtonMargin'].toString());
    buttonPadding = double.parse(json['ButtonPadding'].toString());
    buttonText = json['ButtonText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ButtonRadius'] = this.buttonRadius;
    data['ButtonRadiusColor'] = this.buttonRadiusColor;
    data['ButtonFontColor'] = this.buttonFontColor;
    data['ButtonFontWeight'] = this.buttonFontWeight;
    data['ButtonBackgroundColor'] = this.buttonBackgroundColor;
    data['ButtonMargin'] = this.buttonMargin;
    data['ButtonPadding'] = this.buttonPadding;
    data['ButtonText'] = this.buttonText;
    return data;
  }
}

class VideoViewData {
  String? videoViewSrc;
  String? videoViewContainerColor;
  String? videoViewBackgroundColor;
  double? videoViewMargin;
  double? videoViewPadding;
  double? videoViewRadius;
  VideoViewTextView? videoViewTextView;

  VideoViewData(
      {this.videoViewSrc,
      this.videoViewContainerColor,
      this.videoViewBackgroundColor,
      this.videoViewMargin,
      this.videoViewPadding,
      this.videoViewRadius,
      this.videoViewTextView});

  VideoViewData.fromJson(Map<String, dynamic> json) {
    videoViewSrc = json['VideoViewSrc'];
    videoViewContainerColor = json['VideoViewContainerColor'];
    videoViewBackgroundColor = json['VideoViewBackgroundColor'];
    videoViewMargin = double.parse(json['VideoViewMargin'].toString());
    videoViewPadding = double.parse(json['VideoViewPadding'].toString());
    videoViewRadius = double.parse(json['VideoViewRadius'].toString());
    videoViewTextView = json['VideoViewTextView'] != null
        ? new VideoViewTextView.fromJson(json['VideoViewTextView'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['VideoViewSrc'] = this.videoViewSrc;
    data['VideoViewContainerColor'] = this.videoViewContainerColor;
    data['VideoViewBackgroundColor'] = this.videoViewBackgroundColor;
    data['VideoViewMargin'] = this.videoViewMargin;
    data['VideoViewPadding'] = this.videoViewPadding;
    data['VideoViewRadius'] = this.videoViewRadius;
    if (this.videoViewTextView != null) {
      data['VideoViewTextView'] = this.videoViewTextView!.toJson();
    }
    return data;
  }
}

class VideoViewTextView {
  double? videoViewDescriptionFontSize;
  String? videoViewFontColor;
  String? videoViewFontWeight;
  int? videoViewNumberOfLines;
  String? videoViewBackgroundColor2;
  double? videoViewMargin;
  double? videoViewPadding;
  String? videoViewDescription;

  VideoViewTextView(
      {this.videoViewDescriptionFontSize,
      this.videoViewFontColor,
      this.videoViewFontWeight,
      this.videoViewNumberOfLines,
      this.videoViewBackgroundColor2,
      this.videoViewMargin,
      this.videoViewPadding,
      this.videoViewDescription});

  VideoViewTextView.fromJson(Map<String, dynamic> json) {
    videoViewDescriptionFontSize =
        double.parse(json['VideoViewDescriptionFontSize'].toString());
    videoViewFontColor = json['VideoViewFontColor'];
    videoViewFontWeight = json['VideoViewFontWeight'];
    videoViewNumberOfLines = json['VideoViewNumberOfLines'];
    videoViewBackgroundColor2 = json['VideoViewBackgroundColor2'];
    videoViewMargin = double.parse(json['VideoViewMargin'].toString());
    videoViewPadding = double.parse(json['VideoViewPadding'].toString());
    videoViewDescription = json['VideoViewDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['VideoViewDescriptionFontSize'] = this.videoViewDescriptionFontSize;
    data['VideoViewFontColor'] = this.videoViewFontColor;
    data['VideoViewFontWeight'] = this.videoViewFontWeight;
    data['VideoViewNumberOfLines'] = this.videoViewNumberOfLines;
    data['VideoViewBackgroundColor2'] = this.videoViewBackgroundColor2;
    data['VideoViewMargin'] = this.videoViewMargin;
    data['VideoViewPadding'] = this.videoViewPadding;
    data['VideoViewDescription'] = this.videoViewDescription;
    return data;
  }
}

class BlogViewData {
  bool? blogViewAutoPlay;
  double? blogViewAspectRatio;
  bool? blogViewEnableInfiniteScroll;
  String? blogViewAutoPlayAnimationDuration;
  double? blogViewViewportFraction;
  String? blogViewViewType;
  String? blogViewActiveColor;
  String? blogViewColorDots;
  List<BlogViewItems>? blogViewItems;

  BlogViewData(
      {this.blogViewAutoPlay,
      this.blogViewAspectRatio,
      this.blogViewEnableInfiniteScroll,
      this.blogViewAutoPlayAnimationDuration,
      this.blogViewViewportFraction,
      this.blogViewViewType,
      this.blogViewActiveColor,
      this.blogViewColorDots,
      this.blogViewItems});

  BlogViewData.fromJson(Map<String, dynamic> json) {
    blogViewAutoPlay = json['BlogViewAutoPlay'];
    blogViewAspectRatio = double.parse(json['BlogViewAspectRatio'].toString());
    blogViewEnableInfiniteScroll = json['BlogViewEnableInfiniteScroll'];
    blogViewAutoPlayAnimationDuration =
        json['BlogViewAutoPlayAnimationDuration'].toString();
    blogViewViewportFraction =
        double.parse(json['BlogViewViewportFraction'].toString());
    blogViewViewType = json['BlogViewViewType'];
    blogViewActiveColor = json['BlogViewActiveColor'];
    blogViewColorDots = json['BlogViewColorDots'];
    if (json['BlogViewItems'] != null) {
      blogViewItems = <BlogViewItems>[];
      json['BlogViewItems'].forEach((v) {
        blogViewItems!.add(new BlogViewItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['BlogViewAutoPlay'] = this.blogViewAutoPlay;
    data['BlogViewAspectRatio'] = this.blogViewAspectRatio;
    data['BlogViewEnableInfiniteScroll'] = this.blogViewEnableInfiniteScroll;
    data['BlogViewAutoPlayAnimationDuration'] =
        this.blogViewAutoPlayAnimationDuration;
    data['BlogViewViewportFraction'] = this.blogViewViewportFraction;
    data['BlogViewViewType'] = this.blogViewViewType;
    data['BlogViewActiveColor'] = this.blogViewActiveColor;
    data['BlogViewColorDots'] = this.blogViewColorDots;
    if (this.blogViewItems != null) {
      data['BlogViewItems'] =
          this.blogViewItems!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BlogViewItems {
  String? blogViewTitle;
  String? blogViewDescription;
  String? blogViewImagePath;
  String? blogViewTextTitleColor;
  String? blogViewTextDescriptionColor;
  String? blogViewTextBackgroundColor;
  String? blogViewBackgroundColor;
  double? blogViewRadius;

  BlogViewItems(
      {this.blogViewTitle,
      this.blogViewDescription,
      this.blogViewImagePath,
      this.blogViewTextTitleColor,
      this.blogViewTextDescriptionColor,
      this.blogViewTextBackgroundColor,
      this.blogViewBackgroundColor,
      this.blogViewRadius});

  BlogViewItems.fromJson(Map<String, dynamic> json) {
    blogViewTitle = json['BlogViewTitle'];
    blogViewDescription = json['BlogViewDescription'];
    blogViewImagePath = json['BlogViewImagePath'];
    blogViewTextTitleColor = json['BlogViewTextTitleColor'];
    blogViewTextDescriptionColor = json['BlogViewTextDescriptionColor'];
    blogViewTextBackgroundColor = json['BlogViewTextBackgroundColor'];
    blogViewBackgroundColor = json['BlogViewBackgroundColor'];
    blogViewRadius = double.parse(json['BlogViewRadius'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['BlogViewTitle'] = this.blogViewTitle;
    data['BlogViewDescription'] = this.blogViewDescription;
    data['BlogViewImagePath'] = this.blogViewImagePath;
    data['BlogViewTextTitleColor'] = this.blogViewTextTitleColor;
    data['BlogViewTextDescriptionColor'] = this.blogViewTextDescriptionColor;
    data['BlogViewTextBackgroundColor'] = this.blogViewTextBackgroundColor;
    data['BlogViewBackgroundColor'] = this.blogViewBackgroundColor;
    data['BlogViewRadius'] = this.blogViewRadius;
    return data;
  }
}

class TextListWithDetailsData {
  String? containerColor;
  double? margin;
  double? padding;
  double? questionFontSize;
  double? answerFontSize;
  double? wholeViewRadius;
  String? questionFontColor;
  String? answerFontColor;
  bool? arrowVisibility;
  String? arrowColor;
  String? listViewType;
  List<QuestionAnswer>? questionAnswer;

  TextListWithDetailsData(
      {this.containerColor,
      this.margin,
      this.padding,
      this.questionFontSize,
      this.answerFontSize,
      this.wholeViewRadius,
      this.questionFontColor,
      this.answerFontColor,
      this.arrowVisibility,
      this.arrowColor,
      this.listViewType,
      this.questionAnswer});

  TextListWithDetailsData.fromJson(Map<String, dynamic> json) {
    containerColor = json['ContainerColor'];
    margin = double.parse(json['Margin'].toString());
    padding = double.parse(json['Padding'].toString());
    questionFontSize = double.parse(json['QuestionFontSize'].toString());
    answerFontSize = double.parse(json['AnswerFontSize'].toString());
    wholeViewRadius = double.parse(json['wholeViewRadius'].toString());
    questionFontColor = json['QuestionFontColor'];
    answerFontColor = json['AnswerFontColor'];
    arrowVisibility = json['ArrowVisibility'];
    arrowColor = json['ArrowColor'];
    listViewType = json['ListViewType'];
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
    data['WholeViewRadius'] = this.wholeViewRadius;
    data['QuestionFontColor'] = this.questionFontColor;
    data['AnswerFontColor'] = this.answerFontColor;
    data['ArrowVisibility'] = this.arrowVisibility;
    data['ArrowColor'] = this.arrowColor;
    data['ListViewType'] = this.listViewType;
    if (this.questionAnswer != null) {
      data['QuestionAnswer'] =
          this.questionAnswer!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class QuestionAnswer {
  String? question;
  bool? expand;
  String? answer;

  QuestionAnswer({this.question, this.expand, this.answer});

  QuestionAnswer.fromJson(Map<String, dynamic> json) {
    question = json['Question'];
    expand = json['Expand'];
    answer = json['Answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Question'] = this.question;
    data['Expand'] = this.expand;
    data['Answer'] = this.answer;
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
    margin = double.parse(json['Margin'].toString());
    padding = double.parse(json['Padding'].toString());
    textFontSize = double.parse(json['textFontSize'].toString());
    wholeViewRadius = double.parse(json['wholeViewRadius'].toString());
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

class WebViewData {
  String? contentType;
  String? htmlContent;
  String? backgroundColor;
  double? scaleSize;
  String? link;
  double? padding;
  double? margin;

  WebViewData(
      {this.contentType,
      this.htmlContent,
      this.backgroundColor,
      this.scaleSize,
      this.link,
      this.padding,
      this.margin});

  WebViewData.fromJson(Map<String, dynamic> json) {
    contentType = json['ContentType'];
    htmlContent = json['HtmlContent'];
    backgroundColor = json['BackgroundColor'];
    scaleSize = double.parse(json['ScaleSize'].toString());
    link = json['Link'];
    padding = double.parse(json['Padding'].toString());
    margin = double.parse(json['Margin'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ContentType'] = this.contentType;
    data['HtmlContent'] = this.htmlContent;
    data['BackgroundColor'] = this.backgroundColor;
    data['ScaleSize'] = this.scaleSize;
    data['Link'] = this.link;
    data['Padding'] = this.padding;
    data['Margin'] = this.margin;
    return data;
  }
}
