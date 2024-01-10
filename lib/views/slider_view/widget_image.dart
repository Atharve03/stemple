import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:stemple/helper/util.dart';

import 'package:stemple/modelClass/data_model.dart';
import 'package:stemple/modelClass/page_layout_model.dart';


class WidgetImage extends StatelessWidget {
  SliderItems sliderItems;
  WidgetImage(this.sliderItems);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Util.getColorFromHex(sliderItems.sliderBackgroundColor!),
      // child: Image.network(
      //   sliderItems.sliderLink!,
      //   fit: BoxFit.cover,
      //   // height: MediaQuery.of(context).size.height * 0.8,
      //   width: double.infinity,
      // ),
      child: 
             CachedNetworkImage(
                        fit: BoxFit.cover,
                        width: double.infinity,
                        imageUrl: sliderItems.sliderLink!,
                        placeholder: (context, url) => Image.asset(
                              'assets/images/placeholder-image.jpg',
                              package: 'jsontoview',
                            ),
                        errorWidget: (context, url, error) => Image.asset(
                              'assets/images/placeholder-image.jpg',
                              package: 'jsontoview',
                            )),
    );
  }
}