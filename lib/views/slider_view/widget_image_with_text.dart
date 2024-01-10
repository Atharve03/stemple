import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:stemple/helper/util.dart';

import 'package:stemple/modelClass/data_model.dart';
import 'package:stemple/modelClass/page_layout_model.dart';


class WidgetImageWithText extends StatelessWidget {
  SliderItems sliderItems;
  WidgetImageWithText(this.sliderItems);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Util.getColorFromHex(sliderItems.sliderBackgroundColor!),
      child: Stack(
        children: [
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
          Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(sliderItems.sliderText!,
                    style: const TextStyle(
                        backgroundColor: Colors.transparent,
                        color: Color.fromARGB(255, 243, 255, 21),
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ]))
        ],
      ),
    );
  }
}
