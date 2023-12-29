import 'package:flutter/material.dart';

import '../../modelClass/data_model.dart';
import '../utils/util.dart';

class ItgeekWidgetBannerImage extends StatelessWidget {
  Function(ImageViewData) OnClick;
  ImageViewData imageViewData;
  ItgeekWidgetBannerImage(this.imageViewData, this.OnClick);

  @override
  Widget build(BuildContext context) {
    if (imageViewData.imageViewViewType == "Full") {
      return InkWell(
          onTap: () {
            OnClick(imageViewData);
          },
          child: FullImage(imageViewData));
    } else {
      return InkWell(
          onTap: () {
            OnClick(imageViewData);
          },
          child: HalfImage(imageViewData));
    }
  }
}

class FullImage extends StatelessWidget {
  ImageViewData imageViewData;

  FullImage(this.imageViewData);

  @override
  Widget build(BuildContext context) {
    var textColor = Util.getColorFromHex(
        imageViewData.imageViewTextView!.imageViewFontColor!);
    var bgColor = Util.getColorFromHex(imageViewData.imageViewBackgroundColor!);

    return Container(
        margin: EdgeInsets.all(imageViewData.imageViewMargin!),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(imageViewData.imageViewRadius!),
          color: bgColor,
        ),
        width: double.infinity,
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(imageViewData.imageViewPadding!),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(imageViewData.imageViewRadius!),
              child: Image.network(
                imageViewData.imageViewSrc!,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          imageViewData.imageViewTextView!.imageViewTitle != ""
              ? Padding(
                  padding: EdgeInsets.all(
                      imageViewData.imageViewTextView!.imageViewPadding!),
                  child: Text(
                    imageViewData.imageViewTextView!.imageViewTitle!,
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: imageViewData
                            .imageViewTextView!.imageViewTitleFontSize!),
                  ),
                )
              : Container(),
          SizedBox(
            height: 5,
          ),
          imageViewData.imageViewTextView!.imageViewDescription != ""
              ? Padding(
                  padding: EdgeInsets.all(
                      imageViewData.imageViewTextView!.imageViewPadding!),
                  child: Text(
                    imageViewData.imageViewTextView!.imageViewDescription!,
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: imageViewData
                            .imageViewTextView!.imageViewDescriptionFontSize!),
                  ),
                )
              : Container()
        ]));
  }
}

class HalfImage extends StatelessWidget {
  ImageViewData imageViewData;

  HalfImage(this.imageViewData);

  @override
  Widget build(BuildContext context) {
    var textColor = Util.getColorFromHex(
        imageViewData.imageViewTextView!.imageViewFontColor!);
    var bgColor = Util.getColorFromHex(imageViewData.imageViewBackgroundColor!);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(imageViewData.imageViewRadius!),
        color: bgColor,
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: 220,
              height: 220,
              // margin: EdgeInsets.only( top: 30.0, bottom: 8.0, right: 8.0, left: 4.0),
              padding: EdgeInsets.only(top: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage(
                    imageViewData.imageViewSrc!,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
                // height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(imageViewData.imageViewRadius!),
                  color: Util.getColorFromHex(
                          imageViewData.imageViewContainerColor!)
                      .withOpacity(0.5),
                ),
                padding: EdgeInsets.all(imageViewData.imageViewPadding!),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    imageViewData.imageViewTextView!.imageViewTitle != ""
                        ? Container(
                            child: Text(
                              imageViewData.imageViewTextView!.imageViewTitle!,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: imageViewData.imageViewTextView!
                                      .imageViewTitleFontSize!,
                                  color: textColor),
                              maxLines: 4,
                              textAlign: TextAlign.center,
                            ),
                          )
                        : Container(),
                    SizedBox(
                      height: 5,
                    ),
                    imageViewData.imageViewTextView!.imageViewDescription != ""
                        ? Container(
                            child: Text(
                              imageViewData
                                  .imageViewTextView!.imageViewDescription!,
                              style: TextStyle(
                                  fontSize: imageViewData.imageViewTextView!
                                      .imageViewDescriptionFontSize!,
                                  color: textColor),
                              maxLines: imageViewData
                                  .imageViewTextView!.imageViewNumberOfLines!,
                              textAlign: TextAlign.center,
                            ),
                          )
                        : Container()
                  ],
                )),
          )
        ],
      ),
    );
  }
}
