import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stemple/helper/util.dart';
import 'package:stemple/modelClass/data_model.dart';

class ItgeekWidgetGridView extends StatelessWidget {
  // const WidgetGridView({super.key, required this.title});
  GridViewData gridViewData;
  ItgeekWidgetGridView(this.gridViewData);

  @override
  Widget build(BuildContext context) {
    List<GridViewItems> listItems = [];
    gridViewData.gridViewItems!.map((item) => {listItems.add(item)}).toList();

    return Container(
      margin: EdgeInsets.all(gridViewData.styleProperties!.backgroundMargin!),
      padding: EdgeInsets.all(gridViewData.styleProperties!.backgroundPadding!),
      width: double.infinity,
      // margin: EdgeInsets.all(30),
      // padding: EdgeInsets.all(gridViewData.padding!),
// height: 900,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            gridViewData.styleProperties!.backgroundRadius!),
        color: Util.getColorFromHex(
            gridViewData.styleProperties!.backgroundColor!),
      ),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: listItems.length,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.8),
        itemBuilder: (context, index) {
          return Container(
              // height: 380,
              // width: double.infinity,
              margin: EdgeInsets.all(gridViewData.styleProperties!.margin!),
              // padding: EdgeInsets.all(gridViewData.styleProperties!.padding!),

              child: Column(children: [
                Padding(
                  padding:
                      EdgeInsets.all(gridViewData.styleProperties!.padding!),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        gridViewData.styleProperties!.radius!),
                    child: FadeInImage.assetNetwork(
                      placeholder: "assets/images/placeholder-image.jpg",
                      image: listItems[index].imageSrc!,
                      fit: BoxFit.cover,
                      // width: double.infinity,
                    ),
                  ),
                ),
                listItems[index].title != ""
                    ? Padding(
                        padding: EdgeInsets.all(
                            gridViewData.styleProperties!.padding!),
                        child: Text(
                          listItems[index].title!,
                          style: TextStyle(
                              color: Util.getColorFromHex(gridViewData
                                  .styleProperties!.titleTextColor!),
                              fontWeight: FontWeight.bold,
                              fontSize: gridViewData
                                  .styleProperties!.titleTextFontSize!),
                        ),
                      )
                    : Container(),
                // SizedBox(
                //   height: 2,
                // ),
                listItems[index].description! != ""
                    ? Padding(
                        padding: EdgeInsets.all(
                            gridViewData.styleProperties!.padding!),
                        child: Text(
                          listItems[index].description!,
                          style: TextStyle(
                              color: Util.getColorFromHex(gridViewData
                                  .styleProperties!.descriptionTextColor!),
                              fontWeight: FontWeight.bold,
                              fontSize: gridViewData
                                  .styleProperties!.descriptionTextFontSize),
                        ),
                      )
                    : Container()
              ]));
        },
      ),
    );
  }
}
