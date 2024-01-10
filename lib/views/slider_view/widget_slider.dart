import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../helper/viewType.dart';
import '../../views/slider_view/widget_image.dart';


import '../../helper/util.dart';
import '../../modelClass/data_model.dart';
import 'widget_image_with_text.dart';
import 'widget_image_with_text_button.dart';

class ItgeekWidgetSlider extends StatefulWidget {
  Function(SliderItems) OnClick;
  SliderData sliderData;

  ItgeekWidgetSlider(this.sliderData, this.OnClick);

  @override
  State<ItgeekWidgetSlider> createState() => _WidgetSliderState();
}

class _WidgetSliderState extends State<ItgeekWidgetSlider> {
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var myBool = true;
    if (widget.sliderData.sliderViewType! == "Enlarge") {
      myBool = true;
    } else {
      myBool = false;
    }

    Color indicatorSelectedColor =
        Util.getColorFromHex(widget.sliderData.sliderIndicatorSelectedColor!);
    Color indicatorUnSelectedColor =
        Util.getColorFromHex(widget.sliderData.sliderIndicatorUnSelectedColor!);

    List<Widget> carouselItems = widget.sliderData.sliderItems!.map((item) {
      if (item.sliderType == ViewType.SliderImageView.name) {
        return InkWell(
            onTap: () {
              widget.OnClick(item);
            },
            child: WidgetImage(item));
      } else if (item.sliderType == ViewType.SliderImageWithTextView.name) {
        return InkWell(
            onTap: () {
              widget.OnClick(item);
            },
            child: WidgetImageWithText(item));
      } else {
        return InkWell(
            onTap: () {
              widget.OnClick(item);
            },
            child: WidgetImageWithTextButton(item));
      }
    }).toList();

    return Container(
        child: Padding(
      padding: EdgeInsets.all(widget.sliderData.sliderPadding!),//, bottom: 8.0),
      child: Stack(
        children: [
          InkWell(
            onTap: () {},
            child: CarouselSlider(
              items: carouselItems,
              carouselController: carouselController,
              options: CarouselOptions(
                  enlargeCenterPage: myBool,
                  autoPlay: widget.sliderData.sliderAutoPlay!,
                  // aspectRatio: 16 / 9,
                  aspectRatio: widget.sliderData.sliderAspectRatio!,
                  // autoPlayCurve: Curves.linear,
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                  enableInfiniteScroll: true,
                  viewportFraction: widget.sliderData.sliderViewPortFraction!,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
            ),
          ),
          Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    widget.sliderData.sliderItems!.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => carouselController.animateToPage(entry.key),
                    child: Container(
                      width: currentIndex == entry.key ? 17 : 7,
                      height: 7,
                      margin: const EdgeInsets.symmetric(horizontal: 3.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == entry.key
                              ? indicatorSelectedColor
                              : indicatorUnSelectedColor),
                    ),
                  );
                }).toList(),
              ))
        ],
      ),
    ));
  }
}
