import 'package:flutter/material.dart';
import 'package:stemple/views/faq_view/full_view.dart';

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
    var titleTextColor =
        Util.getColorFromHex(imageViewData.styleProperties!.titleTextColor!);
    var descriptionTextColor = Util.getColorFromHex(
        imageViewData.styleProperties!.descriptionTextColor!);
    var bgColor =
        Util.getColorFromHex(imageViewData.styleProperties!.backgroundColor!);

    return Container(
        margin:
            EdgeInsets.all(imageViewData.styleProperties!.backgroundMargin!),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              imageViewData.styleProperties!.backgroundRadius!),
          color: bgColor,
        ),
        width: double.infinity,
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(imageViewData.styleProperties!.padding!),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    imageViewData.styleProperties!.radius!),
                child: imageViewData.imageSrc!.isNotEmpty
                    ? Image.network(
                        imageViewData.imageSrc!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )
                    : Image.asset(
                        "assets/placeholder-image.jpg",
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
          ),
          imageViewData.title != ""
              ? Padding(
                  padding:
                      EdgeInsets.all(imageViewData.styleProperties!.padding!),
                  child: Text(
                    imageViewData.title!,
                    style: TextStyle(
                        color: titleTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize:
                            imageViewData.styleProperties!.titleTextFontSize!),
                    maxLines:
                        imageViewData.styleProperties!.titleTextNoOfLines!,
                  ),
                )
              : Container(),
          SizedBox(
            height: 5,
          ),
          imageViewData.description != ""
              ? Padding(
                  padding:
                      EdgeInsets.all(imageViewData.styleProperties!.padding!),
                  child: Text(
                    imageViewData.description!,
                    style: TextStyle(
                        color: descriptionTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: imageViewData
                            .styleProperties!.descriptionTextFontSize!),
                    maxLines: imageViewData
                        .styleProperties!.descriptionTextNoOfLines!,
                  ),
                )
              : Container(),
          imageViewData.description!.length > 100
              ? Padding(
                  padding:
                      EdgeInsets.all(imageViewData.styleProperties!.padding!),
                  child: InkWell(
                          onTap: () {
                            print("more clicked");
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ItgeekWidgetFullView(imageViewData.imageSrc!, imageViewData.title!, imageViewData.description!)));
                          },
                    child: Text(
                      "More",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          
                          fontSize: imageViewData
                              .styleProperties!.descriptionTextFontSize!),
                    ),
                    
                  ),
                )
              : Container(),
        ]));
  }
}

class HalfImage extends StatelessWidget {
  ImageViewData imageViewData;

  HalfImage(this.imageViewData);

  @override
  Widget build(BuildContext context) {
    var titleTextColor =
        Util.getColorFromHex(imageViewData.styleProperties!.titleTextColor!);
    var descriptionTextColor = Util.getColorFromHex(
        imageViewData.styleProperties!.descriptionTextColor!);
    var bgColor =
        Util.getColorFromHex(imageViewData.styleProperties!.backgroundColor!);

    return Container(
      margin: EdgeInsets.all(imageViewData.styleProperties!.backgroundMargin!),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            imageViewData.styleProperties!.backgroundRadius!),
        color: bgColor,
      ),
      padding:
          EdgeInsets.all(imageViewData.styleProperties!.backgroundPadding!),
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
                    imageViewData.imageSrc!,
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
                  borderRadius: BorderRadius.circular(
                      imageViewData.styleProperties!.radius!),
                  color: bgColor.withOpacity(0.5),
                ),
                padding:
                    EdgeInsets.all(imageViewData.styleProperties!.padding!),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    imageViewData.title != ""
                        ? Container(
                            child: Text(
                              imageViewData.title!,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: imageViewData
                                      .styleProperties!.titleTextFontSize!,
                                  color: titleTextColor),
                              maxLines: imageViewData
                                  .styleProperties!.titleTextNoOfLines!,
                              textAlign: TextAlign.center,
                            ),
                          )
                        : Container(),
                    SizedBox(
                      height: 5,
                    ),
                    imageViewData.description != ""
                        ? Container(
                            child: Text(
                              imageViewData.description!,
                              style: TextStyle(
                                  fontSize: imageViewData.styleProperties!
                                      .descriptionTextFontSize!,
                                  color: descriptionTextColor),
                              maxLines: imageViewData
                                  .styleProperties!.descriptionTextNoOfLines!,
                              textAlign: TextAlign.center,
                            ),
                          )
                        : Container(),
                    imageViewData.description!.length > 100
                        ? InkWell(
                          onTap: () {
                            print("more clicked");
                            ItgeekWidgetFullView(imageViewData.imageSrc!, imageViewData.title!, imageViewData.description!);
                          },
                            child: Text(
                              "More",
                              style: TextStyle(
                                  fontSize: imageViewData.styleProperties!
                                      .descriptionTextFontSize!,
                                  color: Colors.blue),
                            ),
                          )
                        : Container(),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
