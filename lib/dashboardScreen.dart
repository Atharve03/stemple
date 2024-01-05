import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stemple/helper/Views.dart';
import 'package:stemple/views/banners_view/itgeek_widget_banner_image.dart';
import 'package:stemple/views/banners_view/itgeek_widget_banner_text.dart';
import 'package:stemple/views/faq_view/itgeek_widget_faq.dart';
import 'package:stemple/views/grid_view/itgeek_widget_grid_view.dart';
import 'package:stemple/views/itgeek_widget_social_media_link.dart';
import 'package:stemple/views/textlist_view/itgeek_text_list_view.dart';
import 'package:stemple/views/web_view/itgeek_webview.dart';

import 'modelClass/page_layout_model.dart';
import 'views/banners_view/itgeek_widget_banner_video.dart';
import 'views/banners_view/itgeek_widget_banner_with_button.dart';
import 'views/blog_view/itgeek_widget_blog_view.dart';
import 'views/category_view/itgeek_widget_category.dart';
import 'views/product_view/Itgeek_widget_product_view.dart';
import 'views/slider_view/widget_slider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: rootBundle.loadString("assets/json/learn/media.json"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var list = json.decode(snapshot.data!);
            print("ddcdfjcnbw ckjdfhvnekjcjscn dkvkdhvn${list}");
            PageLayoutModel myList = PageLayoutModel.fromJson(list);
            print("my list is nnnnnnnnnnnnnnnnnnnn ${myList}");

            return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                    children: myList.pageLayout!.map((element) {
                  // return WidgetFrequentlyAskedQuestions();

                  if (element.view == Views.FAQView.name) {
                    return ItgeekWidgetFaq(element.textListWithDetailsData!);
                  }
                  if (element.view == Views.WebView.name) {
                    print("mywebbb");
                    return ItgeekWebView(element.webViewData!);
                  }
                  if (element.view == Views.GridView.name) {
                    return ItgeekWidgetGridView(element.gridViewData!);
                  }
                  if (element.view == Views.SocialMediaLink.name) {
                    return ItgeekWidgetSocialMediaLink(
                        element.socialMediaLinkData!);
                  }

                  if (element.view == Views.TextTileView.name) {
                    return ItgeekWidgetTextTile(element.textTileData!);
                  }
                  if (element.view == Views.SliderView.name) {
                    return ItgeekWidgetSlider(element.sliderData!, (item) {
                      (element.sliderData);
                      print("itemSliders $item");
                    });
                  }
                  if (element.view == Views.CategoryView.name) {
                    return ItgeekWidgetCategory(element.categoryData!, (item) {
                      (element.categoryData);
                      print("itemCategory $item");
                    });
                  }
                  if (element.view == Views.ProductView.name) {
                    return ItgeekWidgetPopulorProduct(element.productData!,
                        (item) {
                      (element.productData);
                      print("itemProduct $item");
                    });
                  }
                  if (element.view == Views.BannerTextView.name) {
                    return ItgeekWidgetBannerText(element.textViewData!,
                        (item) {
                      (element.textViewData);
                      print("myitemTextView $item");
                    });
                  }
                  if (element.view == Views.BannerImageView.name) {
                    return ItgeekWidgetBannerImage(element.imageViewData!,
                        (item) {
                      (element.imageViewData);
                      print("itemImageView $item");
                    });
                  }
                  if (element.view == Views.BannerButtonTextView.name) {
                    return ItgeekWidgetBannerImageButton(
                        element.buttonViewData!, (item) {
                      (element.buttonViewData);
                      print("itemButtonView $item");
                    });
                  }
                  if (element.view == Views.BannerVideoView.name) {
                    return ItgeekWidgetBannerVideo(element.videoViewData!,
                        (item) {
                      (element.videoViewData);
                      print("itemVideoView $item");
                    });
                  }
                  if (element.view == Views.BlogView.name) {
                    return ItgeekWidgetBlogView(element.blogViewData!, (item) {
                      (element.blogViewData!);
                      print("itemBlogView $item");
                    });
                  }

                  return SizedBox.shrink();
                }).toList()),
              ),
            );
          } else if (snapshot.hasError) {
            return Text('Error loading JSON'); // Handle error
          } else {
            return CircularProgressIndicator(); // Show a loading indicator
          }
        });
  }
}
