
class TextViewData {
  String? description;
  String? title;
  StyleProperties? styleProperties;

  TextViewData({this.description, this.title, this.styleProperties});

  TextViewData.fromJson(Map<String, dynamic> json) {
    description = json['Description'];
    title = json['Title'];
    styleProperties = json['StyleProperties'] != null
        ? new StyleProperties.fromJson(json['StyleProperties'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Description'] = this.description;
    data['Title'] = this.title;
    if (this.styleProperties != null) {
      data['StyleProperties'] = this.styleProperties!.toJson();
    }
    return data;
  }
}

class StyleProperties {
  String? titleTextColor;
  String? titleTextFontName;
  double? titleTextFontSize;
  String? titleTextFontWeight;
  int? titleTextNoOfLines;
  String? descriptionTextColor;
  String? descriptionTextFontName;
  double? descriptionTextFontSize;
  String? descriptionTextFontWeight;
  int? descriptionTextNoOfLines;
  String? backgroundColor;
  String? alignment;
  double? margin;
  double? padding;
  double? radius;
  double? backgroundMargin;
  double? backgroundPadding;
  double? backgroundRadius;
  String? imageSrc;
  double? aspectRatio;

  StyleProperties(
      {this.titleTextColor,
      this.titleTextFontName,
      this.titleTextFontSize,
      this.titleTextFontWeight,
      this.titleTextNoOfLines,
      this.descriptionTextColor,
      this.descriptionTextFontName,
      this.descriptionTextFontSize,
      this.descriptionTextFontWeight,
      this.descriptionTextNoOfLines,
      this.backgroundColor,
      this.alignment,
      this.margin,
      this.padding,
      this.radius,
      this.backgroundMargin,
      this.backgroundPadding,
      this.backgroundRadius,
      this.imageSrc,
      this.aspectRatio});

  StyleProperties.fromJson(Map<String, dynamic> json) {
    titleTextColor = json['TitleTextColor'];
    titleTextFontName = json['TitleTextFontName'];
    titleTextFontSize = json['TitleTextFontSize'];
    titleTextFontWeight = json['TitleTextFontWeight'];
    titleTextNoOfLines = json['TitleTextNoOfLines'];
    descriptionTextColor = json['DescriptionTextColor'];
    descriptionTextFontName = json['DescriptionTextFontName'];
    descriptionTextFontSize = json['DescriptionTextFontSize'];
    descriptionTextFontWeight = json['DescriptionTextFontWeight'];
    descriptionTextNoOfLines = json['DescriptionTextNoOfLines'];
    backgroundColor = json['BackgroundColor'];
    alignment = json['Alignment'];
    margin = json['Margin'];
    padding = json['Padding'];
    radius = json['Radius'];
    backgroundMargin = json['BackgroundMargin'];
    backgroundPadding = json['BackgroundPadding'];
    backgroundRadius = json['BackgroundRadius'];
    imageSrc = json['ImageSrc'];
    aspectRatio = json['AspectRatio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TitleTextColor'] = this.titleTextColor;
    data['TitleTextFontName'] = this.titleTextFontName;
    data['TitleTextFontSize'] = this.titleTextFontSize;
    data['TitleTextFontWeight'] = this.titleTextFontWeight;
    data['TitleTextNoOfLines'] = this.titleTextNoOfLines;
    data['DescriptionTextColor'] = this.descriptionTextColor;
    data['DescriptionTextFontName'] = this.descriptionTextFontName;
    data['DescriptionTextFontSize'] = this.descriptionTextFontSize;
    data['DescriptionTextFontWeight'] = this.descriptionTextFontWeight;
    data['DescriptionTextNoOfLines'] = this.descriptionTextNoOfLines;
    data['BackgroundColor'] = this.backgroundColor;
    data['Alignment'] = this.alignment;
    data['Margin'] = this.margin;
    data['Padding'] = this.padding;
    data['Radius'] = this.radius;
    data['BackgroundMargin'] = this.backgroundMargin;
    data['BackgroundPadding'] = this.backgroundPadding;
    data['BackgroundRadius'] = this.backgroundRadius;
    data['ImageSrc'] = this.imageSrc;
    data['AspectRatio'] = this.aspectRatio;
    return data;
  }
}

class ImageViewData {
  String? imageViewViewType;
  String? imageSrc;
  String? title;
  String? description;
  StyleProperties? styleProperties;

  ImageViewData(
      {this.imageViewViewType,
      this.imageSrc,
      this.title,
      this.description,
      this.styleProperties});

  ImageViewData.fromJson(Map<String, dynamic> json) {
    imageViewViewType = json['ImageViewViewType'];
    imageSrc = json['ImageSrc'];
    title = json['Title'];
    description = json['Description'];
    styleProperties = json['StyleProperties'] != null
        ? new StyleProperties.fromJson(json['StyleProperties'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ImageViewViewType'] = this.imageViewViewType;
    data['ImageSrc'] = this.imageSrc;
    data['Title'] = this.title;
    data['Description'] = this.description;
    if (this.styleProperties != null) {
      data['StyleProperties'] = this.styleProperties!.toJson();
    }
    return data;
  }
}

class TextTileData {
  StyleProperties? styleProperties;
  List<TextTileItems>? textTileItems;

  TextTileData({this.styleProperties, this.textTileItems});

  TextTileData.fromJson(Map<String, dynamic> json) {
    styleProperties = json['StyleProperties'] != null
        ? new StyleProperties.fromJson(json['StyleProperties'])
        : null;
    if (json['textTileItems'] != null) {
      textTileItems = <TextTileItems>[];
      json['textTileItems'].forEach((v) {
        textTileItems!.add(new TextTileItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.styleProperties != null) {
      data['StyleProperties'] = this.styleProperties!.toJson();
    }
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
  double? scaleSize;
  String? htmlContent;
  String? link;
  StyleProperties? styleProperties;

  WebViewData(
      {this.contentType,
      this.scaleSize,
      this.htmlContent,
      this.link,
      this.styleProperties});

  WebViewData.fromJson(Map<String, dynamic> json) {
    contentType = json['ContentType'];
    scaleSize = json['ScaleSize'];
    htmlContent = json['HtmlContent'];
    link = json['Link'];
    styleProperties = json['StyleProperties'] != null
        ? new StyleProperties.fromJson(json['StyleProperties'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ContentType'] = this.contentType;
    data['ScaleSize'] = this.scaleSize;
    data['HtmlContent'] = this.htmlContent;
    data['Link'] = this.link;
    if (this.styleProperties != null) {
      data['StyleProperties'] = this.styleProperties!.toJson();
    }
    return data;
  }
}

class SliderData {
  String? sliderIndicatorSelectedColor;
  String? sliderIndicatorUnSelectedColor;
  double? sliderViewPortFraction;
  bool? sliderAutoPlay;
  double? sliderPadding;
  double? sliderAspectRatio;
  String? sliderViewType;
  List<SliderItems>? sliderItems;

  SliderData(
      {this.sliderIndicatorSelectedColor,
      this.sliderIndicatorUnSelectedColor,
      this.sliderViewPortFraction,
      this.sliderAutoPlay,
      this.sliderPadding,
      this.sliderAspectRatio,
      this.sliderViewType,
      this.sliderItems});

  SliderData.fromJson(Map<String, dynamic> json) {
    sliderIndicatorSelectedColor = json['SliderIndicatorSelectedColor'];
    sliderIndicatorUnSelectedColor = json['SliderIndicatorUnSelectedColor'];
    sliderViewPortFraction = json['SliderViewPortFraction'];
    sliderAutoPlay = json['SliderAutoPlay'];
    sliderPadding = json['SliderPadding'];
    sliderAspectRatio = json['SliderAspectRatio'];
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
    data['SliderAspectRatio'] = this.sliderAspectRatio;
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


class ButtonViewData {
  String? actionType;
  String? actionId;
  String? buttonText;
  String? actionHandle;
  String? buttonViewViewType;
  String? buttonFontColor;
  String? buttonBackgroundColor;
  String? title;
  String? description;
  StyleProperties? styleProperties;

  ButtonViewData(
      {this.actionType,
      this.actionId,
      this.buttonText,
      this.actionHandle,
      this.buttonViewViewType,
      this.buttonFontColor,
      this.buttonBackgroundColor,
      this.title,
      this.description,
      this.styleProperties});

  ButtonViewData.fromJson(Map<String, dynamic> json) {
    actionType = json['ActionType'];
    actionId = json['ActionId'];
    buttonText = json['ButtonText'];
    actionHandle = json['ActionHandle'];
    buttonViewViewType = json['ButtonViewViewType'];
    buttonFontColor = json['ButtonFontColor'];
    buttonBackgroundColor = json['ButtonBackgroundColor'];
    title = json['Title'];
    description = json['Description'];
    styleProperties = json['StyleProperties'] != null
        ? new StyleProperties.fromJson(json['StyleProperties'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ActionType'] = this.actionType;
    data['ActionId'] = this.actionId;
    data['ButtonText'] = this.buttonText;
    data['ActionHandle'] = this.actionHandle;
    data['ButtonViewViewType'] = this.buttonViewViewType;
    data['ButtonFontColor'] = this.buttonFontColor;
    data['ButtonBackgroundColor'] = this.buttonBackgroundColor;
    data['Title'] = this.title;
    data['Description'] = this.description;
    if (this.styleProperties != null) {
      data['StyleProperties'] = this.styleProperties!.toJson();
    }
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
  String? blogHandle;
  bool? blogFromItem;
  StyleProperties? styleProperties;
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
      this.blogHandle,
      this.blogFromItem,
      this.styleProperties,
      this.blogViewItems});

  BlogViewData.fromJson(Map<String, dynamic> json) {
    blogViewAutoPlay = json['BlogViewAutoPlay'];
    blogViewAspectRatio = json['BlogViewAspectRatio'];
    blogViewEnableInfiniteScroll = json['BlogViewEnableInfiniteScroll'];
    blogViewAutoPlayAnimationDuration =
        json['BlogViewAutoPlayAnimationDuration'];
    blogViewViewportFraction = json['BlogViewViewportFraction'];
    blogViewViewType = json['BlogViewViewType'];
    blogViewActiveColor = json['BlogViewActiveColor'];
    blogViewColorDots = json['BlogViewColorDots'];
    blogHandle = json['Blog_Handle'];
    blogFromItem = json['BlogFromItem'];
    styleProperties = json['StyleProperties'] != null
        ? new StyleProperties.fromJson(json['StyleProperties'])
        : null;
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
    data['Blog_Handle'] = this.blogHandle;
    data['BlogFromItem'] = this.blogFromItem;
    if (this.styleProperties != null) {
      data['StyleProperties'] = this.styleProperties!.toJson();
    }
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

  BlogViewItems(
      {this.blogViewTitle, this.blogViewDescription, this.blogViewImagePath});

  BlogViewItems.fromJson(Map<String, dynamic> json) {
    blogViewTitle = json['BlogViewTitle'];
    blogViewDescription = json['BlogViewDescription'];
    blogViewImagePath = json['BlogViewImagePath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['BlogViewTitle'] = this.blogViewTitle;
    data['BlogViewDescription'] = this.blogViewDescription;
    data['BlogViewImagePath'] = this.blogViewImagePath;
    return data;
  }
}

class VideoViewData {
  String? actionType;
  String? actionId;
  String? actionHandle;
  String? title;
  String? description;
  String? videoViewSrc;
  StyleProperties? styleProperties;

  VideoViewData(
      {this.actionType,
      this.actionId,
      this.actionHandle,
      this.title,
      this.videoViewSrc,
      this.description,
      this.styleProperties});

  VideoViewData.fromJson(Map<String, dynamic> json) {
    actionType = json['ActionType'];
    actionId = json['ActionId'];
    actionHandle = json['ActionHandle'];
    title = json['Title'];
    videoViewSrc = json['VideoViewSrc'];
    description = json['Description'];
    styleProperties = json['StyleProperties'] != null
        ? new StyleProperties.fromJson(json['StyleProperties'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ActionType'] = this.actionType;
    data['ActionId'] = this.actionId;
    data['ActionHandle'] = this.actionHandle;
    data['Title'] = this.title;
    data['VideoViewSrc'] = this.videoViewSrc;
    data['Description'] = this.description;
    if (this.styleProperties != null) {
      data['StyleProperties'] = this.styleProperties!.toJson();
    }
    return data;
  }
}

class CategoryData {
  StyleProperties? styleProperties;
  String? categoryViewBackgroundColor;
  bool? categoryAllVisible;
  String? categoryLinkType;
  List<CategoryItems>? categoryItems;

  CategoryData(
      {this.styleProperties,
      this.categoryViewBackgroundColor,
      this.categoryAllVisible,
      this.categoryLinkType,
      this.categoryItems});

  CategoryData.fromJson(Map<String, dynamic> json) {
    styleProperties = json['StyleProperties'] != null
        ? new StyleProperties.fromJson(json['StyleProperties'])
        : null;
    categoryViewBackgroundColor = json['CategoryViewBackgroundColor'];
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
    if (this.styleProperties != null) {
      data['StyleProperties'] = this.styleProperties!.toJson();
    }
    data['CategoryViewBackgroundColor'] = this.categoryViewBackgroundColor;
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
  StyleProperties? styleProperties;
  String? productViewBackgroundColor;
  bool? productAllVisible;
  String? productLinkType;
  String? categoryLinkHandle;
  int? categoryLinkId;
  bool? showCategoryProduct;
  List<ProductItems>? productItems;

  ProductData(
      {this.styleProperties,
      this.productViewBackgroundColor,
      this.productAllVisible,
      this.productLinkType,
      this.categoryLinkHandle,
      this.categoryLinkId,
      this.showCategoryProduct,
      this.productItems});

  ProductData.fromJson(Map<String, dynamic> json) {
    styleProperties = json['StyleProperties'] != null
        ? new StyleProperties.fromJson(json['StyleProperties'])
        : null;
    productViewBackgroundColor = json['ProductViewBackgroundColor'];
    productAllVisible = json['ProductAllVisible'];
    productLinkType = json['ProductLinkType'];
    categoryLinkHandle = json['CategoryLinkHandle'];
    categoryLinkId = json['CategoryLinkId'];
    showCategoryProduct = json['ShowCategoryProduct'];
    if (json['ProductItems'] != null) {
      productItems = <ProductItems>[];
      json['ProductItems'].forEach((v) {
        productItems!.add(new ProductItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.styleProperties != null) {
      data['StyleProperties'] = this.styleProperties!.toJson();
    }
    data['ProductViewBackgroundColor'] = this.productViewBackgroundColor;
    data['ProductAllVisible'] = this.productAllVisible;
    data['ProductLinkType'] = this.productLinkType;
    data['CategoryLinkHandle'] = this.categoryLinkHandle;
    data['CategoryLinkId'] = this.categoryLinkId;
    data['ShowCategoryProduct'] = this.showCategoryProduct;
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

class TextListWithDetailsData {
  StyleProperties? styleProperties;
  bool? arrowVisibility;
  List<QuestionAnswer>? questionAnswer;
  String? ViewType;
  double? iconSize;
String? iconColor;

  TextListWithDetailsData(
      {this.styleProperties, this.arrowVisibility, this.questionAnswer,this.ViewType,this.iconSize,this.iconColor});

  TextListWithDetailsData.fromJson(Map<String, dynamic> json) {
    styleProperties = json['StyleProperties'] != null
        ? new StyleProperties.fromJson(json['StyleProperties'])
        : null;
    arrowVisibility = json['ArrowVisibility'];
    ViewType=json['ViewType'];
    iconSize=json['IconSize'];
    iconColor=json['IconColor'];
    if (json['QuestionAnswer'] != null) {
      questionAnswer = <QuestionAnswer>[];
      json['QuestionAnswer'].forEach((v) {
        questionAnswer!.add(new QuestionAnswer.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.styleProperties != null) {
      data['StyleProperties'] = this.styleProperties!.toJson();
    }
    data['ArrowVisibility'] = this.arrowVisibility;
    data['ViewType'] = this.ViewType;
    data['IconSize'] = this.iconSize;
    data['IconColor'] = this.iconColor;
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
  // String? answer;
  dynamic answer;

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

class GridViewData {
  StyleProperties? styleProperties;
  List<GridViewItems>? gridViewItems;

  GridViewData({this.styleProperties, this.gridViewItems});

  GridViewData.fromJson(Map<String, dynamic> json) {
    styleProperties = json['StyleProperties'] != null
        ? new StyleProperties.fromJson(json['StyleProperties'])
        : null;
    if (json['GridViewItems'] != null) {
      gridViewItems = <GridViewItems>[];
      json['GridViewItems'].forEach((v) {
        gridViewItems!.add(new GridViewItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.styleProperties != null) {
      data['StyleProperties'] = this.styleProperties!.toJson();
    }
    if (this.gridViewItems != null) {
      data['GridViewItems'] =
          this.gridViewItems!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GridViewItems {
  String? imageSrc;
  String? title;
  String? description;

  GridViewItems({this.imageSrc, this.title, this.description});

  GridViewItems.fromJson(Map<String, dynamic> json) {
    imageSrc = json['ImageSrc'];
    title = json['Title'];
    description = json['Description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ImageSrc'] = this.imageSrc;
    data['Title'] = this.title;
    data['Description'] = this.description;
    return data;
  }
}


