import 'package:flutter/material.dart';
import 'package:stemple/helper/util.dart';

import '../../modelClass/data_model.dart';
import '../../modelClass/page_layout_model.dart';


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
              FadeInImage.assetNetwork(
                    placeholder: "assets/images/placeholder-image.jpg",
                    image: sliderItems.sliderLink!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
    );
  }
}