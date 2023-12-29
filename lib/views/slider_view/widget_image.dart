import 'package:flutter/material.dart';

import '../../modelClass/data_model.dart';
import '../../modelClass/page_layout_model.dart';


class WidgetImage extends StatelessWidget {
  SliderItems sliderItems;
  WidgetImage(this.sliderItems);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        sliderItems.sliderLink!,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }
}