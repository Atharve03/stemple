import 'package:flutter/material.dart';

import '../../helper/util.dart';
import '../../modelClass/data_model.dart';

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
