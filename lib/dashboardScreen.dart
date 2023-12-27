import 'dart:convert';
import 'package:stemple/views/myResources/banners/widget_banner_with_button.dart';
import 'package:stemple/views/myResources/blog/widget_blog_view.dart';
import 'package:stemple/modelClass/DashboardModel.dart';
import 'package:stemple/views/myResources/banners/widget_banner_image.dart';
import 'package:stemple/views/myResources/banners/widget_banner_text.dart';
import 'package:stemple/views/myResources/banners/widget_banner_video.dart';
import 'package:stemple/views/myResources/category/widget_popular_category.dart';
import 'package:stemple/views/faq.dart';
import 'package:stemple/views/myResources/category/widget_popular_category.dart';
import 'package:stemple/views/myResources/product/widget_product_view.dart';
import 'package:stemple/views/myResources/slider/widget_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: rootBundle.loadString("assets/json/Dashboard.json"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var list = json.decode(snapshot.data!);
            DashboardModel myList = DashboardModel.fromJson(list);

            return SingleChildScrollView(
              child: Column(
                  children: myList.dashboardJson!.map((element) {

                    // return WidgetFrequentlyAskedQuestions();

                if (element.view == "Sliders") {
                  return WidgetSlider(element.sliderData!, (item) {
                    (element.sliderData);
                    print("itemSliders $item");
                  });
                }
                if (element.view == "Category") {
                  return WidgetPopularCategory(element.categoryData!, (item) {
                    (element.categoryData);
                    print("itemCategory $item");
                  });
                }
                if (element.view == "Product") {
                  return WidgetPopulorProduct(element.productData!, (item) {
                    (element.productData);
                    print("itemProduct $item");
                  });
                }
                // if (element.view == "TextView") {
                //   return WidgetBannerText(element.textViewData!, (item) {
                //     (element.textViewData);
                //     print("itemTextView $item");
                //   });
                // }
                // if (element.view == "ImageView") {
                //   return WidgetBannerImage(element.imageViewData!, (item) {
                //     (element.imageViewData);
                //     print("itemImageView $item");
                //   });
                // }
                if (element.view == "DetailButtonView") {
                  return WidgetBannerImageButton(element.buttonViewData!, (item) {
                    (element.buttonViewData);
                    print("itemButtonView $item");
                  });
                }
                if (element.view == "VideoView") {
                  return WidgetBannerVideo(element.videoViewData!, (item) {
                    (element.videoViewData);
                    print("itemVideoView $item");
                  });
                }
                if (element.view == "BlogView") {
                  return WidgetBlogView(element.blogViewData!, (item) {
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
