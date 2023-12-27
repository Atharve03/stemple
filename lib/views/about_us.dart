import 'dart:convert';
import 'package:stemple/modelClass/ModelAboutUs.dart';
import 'package:stemple/views/myResources/banners/widget_banner_image.dart';
import 'package:stemple/views/myResources/banners/widget_banner_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stemple/views/textListTile.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: rootBundle.loadString("assets/json/aboutUs.json"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var list = json.decode(snapshot.data!);
            ModelAboutUs myList = ModelAboutUs.fromJson(list);

            return SingleChildScrollView(
              child: Container(
                color: const Color.fromARGB(255, 23, 23, 23),
                child: Column(
                    children: myList.aboutUsJson!.map((element) {
                
                
                  // if (element.view == "Sliders") {
                  //   return WidgetSlider(element.sliderData!, (item) {
                  //     (element.sliderData);
                  //     print("itemSliders $item");
                  //   });
                  // }
                  // if (element.view == "Category") {
                  //   return WidgetPopularCategory(element.categoryData!, (item) {
                  //     (element.categoryData);
                  //     print("itemCategory $item");
                  //   });
                  // }
                  // if (element.view == "Product") {
                  //   return WidgetPopulorProduct(element.productData!, (item) {
                  //     (element.productData);
                  //     print("itemProduct $item");
                  //   });
                  // }
                  if (element.view == "TextView") {
                    return WidgetBannerText(element.textViewData!, (item) {
                      (element.textViewData);
                      print("itemTextView $item");
                    });
                  }
                  if (element.view == "ImageView") {
                    return WidgetBannerImage(element.imageViewData!, (item) {
                      (element.imageViewData);
                      print("itemImageView $item");
                    });
                  }
                  // if (element.view == "DetailButtonView") {
                  //   return WidgetBannerImageButton(element.buttonViewData!, (item) {
                  //     (element.buttonViewData);
                  //     print("itemButtonView $item");
                  //   });
                  // }
                  // if (element.view == "VideoView") {
                  //   return WidgetBannerVideo(element.videoViewData!, (item) {
                  //     (element.videoViewData);
                  //     print("itemVideoView $item");
                  //   });
                  // }
                  // if (element.view == "BlogView") {
                  //   return WidgetBlogView(element.blogViewData!, (item) {
                  //     (element.blogViewData!);
                  //     print("itemBlogView $item");
                  //   });
                  // }
                  if (element.view == "textTile") {
                    return WidgetTextTile(element.textTileData!);
                    // , (item) {
                    //   (element.blogViewData!);
                    //   print("itemBlogView $item");
                    // });
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
