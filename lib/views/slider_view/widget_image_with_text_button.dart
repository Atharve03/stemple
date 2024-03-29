import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:stemple/helper/util.dart';
import 'package:stemple/modelClass/data_model.dart';

class WidgetImageWithTextButton extends StatelessWidget {
  SliderItems sliderItems;
  WidgetImageWithTextButton(this.sliderItems);

  @override
  Widget build(BuildContext context) {
    Color buttonColor = Util.getColorFromHex(sliderItems.sliderButtonColor!);
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
              bottom: 70,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(sliderItems.sliderText!,
                        style: const TextStyle(
                            backgroundColor: Colors.transparent,
                            color: Color.fromARGB(255, 243, 255, 21),
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ]),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              print("clicked");
                              print("my ${sliderItems.sliderButtonClicked}");
                              sliderItems.sliderButtonClicked;
                            },
                            child: Text(
                              sliderItems.sliderButtonText!,
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: buttonColor),
                          )
                        ]),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
