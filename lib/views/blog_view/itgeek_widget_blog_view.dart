import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:stemple/helper/viewType.dart';

import 'package:stemple/helper/util.dart';
import 'package:stemple/modelClass/data_model.dart';
import 'itgeek_blog_half_image.dart';
import 'itgeek_blog_image.dart';
import 'itgeek_blog_position_text.dart';

class ItgeekWidgetBlogView extends StatefulWidget {
  BlogViewData blogViewData;
 
  Function(BlogViewItems) onClick;

  ItgeekWidgetBlogView(this.blogViewData, this.onClick, {super.key});

  @override
  State<ItgeekWidgetBlogView> createState() => _WidgetBlogViewState();
}

class _WidgetBlogViewState extends State<ItgeekWidgetBlogView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Util.getColorFromHex(widget.blogViewData.styleProperties!.backgroundColor!),
      child: Column(
        children: [
          CarouselSlider(
            items: widget.blogViewData.blogViewItems!.map((item) {
              if (widget.blogViewData.blogViewViewType == ViewType.BlogViewHalfImageHalfText.name) {
                return InkWell(
                    onTap: () {
                      widget.onClick(item);
                    },
                    child: ItgeekWidgetBlogHalfImage(widget.blogViewData.styleProperties!,item));
              } else if (widget.blogViewData.blogViewViewType == ViewType.BlogViewFullImage.name) {
                return InkWell(
                    onTap: () {
                      widget.onClick(item);
                    },
                    child: ItgeekWidgetBlog(item,widget.blogViewData.styleProperties!));
              } else {
                return InkWell(
                    onTap: () {
                      widget.onClick(item);
                    },
                    child: ItgeekWidgetBlogPosition(item,widget.blogViewData.styleProperties!));
              }
            }).toList(),
            options: CarouselOptions(
              // height: 375.0,
              // enlargeCenterPage: true,
              autoPlay: widget.blogViewData.blogViewAutoPlay!,
              aspectRatio: widget.blogViewData.blogViewAspectRatio!,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll:
                  widget.blogViewData.blogViewEnableInfiniteScroll!,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: widget.blogViewData.blogViewViewportFraction!.toDouble(),
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                  print(currentIndex);
                });
              },
            ),
          ),
          // SizedBox(
          //   height: 1,
          // ),
          DotsIndicator(
            decorator: DotsDecorator(
                activeColor: Util.getColorFromHex(
                    widget.blogViewData.blogViewActiveColor.toString()),
                color: Util.getColorFromHex(
                    widget.blogViewData.blogViewColorDots.toString())),
            //  onTap: (position) =>,
            dotsCount: widget.blogViewData.blogViewItems!.length,
      
            position: currentIndex,
      //declare the position to autoplay
          ),
        ],
      ),
    );
  }
}
