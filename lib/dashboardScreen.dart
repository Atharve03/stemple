import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stemple/views/banners_view/itgeek_widget_banner_image.dart';
import 'package:stemple/views/banners_view/itgeek_widget_banner_text.dart';
import 'package:stemple/views/faq_view/itgeek_widget_faq.dart';
import 'package:stemple/views/textlist_view/itgeek_text_list_view.dart';

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

        future: rootBundle.loadString("assets/json/learn/aboutUs.json"),



        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var list = json.decode(snapshot.data!);
            print("ddcdfjcnbw ckjdfhvnekjcjscn dkvkdhvn${list}");
            PageLayoutModel myList = PageLayoutModel.fromJson(list);
print("my list is nnnnnnnnnnnnnnnnnnnn ${myList}");
            return SingleChildScrollView(
              child: Column(
                  children: myList.pageLayout!.map((element) {

                    // return WidgetFrequentlyAskedQuestions();

                if (element.view == "FAQ") {
                  return ItgeekWidgetFaq(element.textListWithDetailsData!);
                }
                
                if (element.view == "textTile") {
                  return ItgeekWidgetTextTile(element.textTileData!);
                }
                if (element.view == "Sliders") {
                  return ItgeekWidgetSlider(element.sliderData!, (item) {
                    (element.sliderData);
                    print("itemSliders $item");
                  });
                }
                if (element.view == "Category") {
                  return ItgeekWidgetCategory(element.categoryData!, (item) {
                    (element.categoryData);
                    print("itemCategory $item");
                  });
                }
                if (element.view == "Product") {
                  return ItgeekWidgetPopulorProduct(element.productData!, (item) {
                    (element.productData);
                    print("itemProduct $item");
                  });
                }
                if (element.view == "TextView") {
                  return ItgeekWidgetBannerText(element.textViewData!, (item) {
                    (element.textViewData);
                    print("itemTextView $item");
                  });
                }
                if (element.view == "ImageView") {
                  return ItgeekWidgetBannerImage(element.imageViewData!, (item) {
                    (element.imageViewData);
                    print("itemImageView $item");
                  });
                }
                if (element.view == "DetailButtonView") {
                  return ItgeekWidgetBannerImageButton(element.buttonViewData!, (item) {
                    (element.buttonViewData);
                    print("itemButtonView $item");
                  });
                }
                if (element.view == "VideoView") {
                  return ItgeekWidgetBannerVideo(element.videoViewData!, (item) {
                    (element.videoViewData);
                    print("itemVideoView $item");
                  });
                }
                if (element.view == "BlogView") {
                  return ItgeekWidgetBlogView(element.blogViewData!, (item) {
                    (element.blogViewData!);
                    print("itemBlogView $item");
                  });
                }

                return SizedBox.shrink();
              }).toList()),
            );
          } else if (snapshot.hasError) {
            return Text('Error loading JSON'); // Handle error
          } else {
            return CircularProgressIndicator(); // Show a loading indicator
          }
        });
  }
}
