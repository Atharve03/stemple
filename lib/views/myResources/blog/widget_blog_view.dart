import 'package:stemple/helper/util.dart';
import 'package:stemple/modelClass/DashboardModel.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:stemple/views/myResources/blog/blog_half_image.dart';
import 'package:stemple/views/myResources/blog/blog_image.dart';
import 'package:stemple/views/myResources/blog/blog_position_text.dart';

class WidgetBlogView extends StatefulWidget {
  BlogViewData blogViewData;
   Function(BlogViewItems) onClick;
  WidgetBlogView(this.blogViewData, this.onClick, {super.key});
 

  @override
  State<WidgetBlogView> createState() => _WidgetBlogViewState();
}

class _WidgetBlogViewState extends State<WidgetBlogView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.blogViewData.blogViewItems!.map((item) {
            if (widget.blogViewData.blogViewViewType == "View1") {
        return InkWell(
          onTap: (){widget.onClick(item);},
          child: WidgetCallHalfImage(item));
            } else if (widget.blogViewData.blogViewViewType == "View2") {
        return InkWell(
          onTap: (){widget.onClick(item);},
          child: WidgetCall(item));
            } else {
        return InkWell(
          onTap: (){widget.onClick(item);},
          child: WidgetCallPosition(item));
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
            viewportFraction: widget.blogViewData.blogViewViewportFraction!,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
                print(currentIndex);
              });
            },
          ),
        ),
        SizedBox(
          height: 1,
        ),
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
    );
  }
}
