import 'package:stemple/modelClass/DashboardModel.dart';
import 'package:flutter/material.dart';

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