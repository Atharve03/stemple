import 'package:flutter/material.dart';
import 'package:stemple/helper/util.dart';

import '../../modelClass/data_model.dart';
import '../../modelClass/page_layout_model.dart';


class WidgetImageWithText extends StatelessWidget {
  SliderItems sliderItems;
  WidgetImageWithText(this.sliderItems);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Util.getColorFromHex(sliderItems.sliderBackgroundColor!),
      child: Stack(
        children: [
          // Image.network(
          //   sliderItems.sliderLink!,
          //   fit: BoxFit.cover,
          //   width: double.infinity,
          // ),
              FadeInImage.assetNetwork(
                    placeholder: "assets/images/placeholder-image.jpg",
                    image: sliderItems.sliderLink!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
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
