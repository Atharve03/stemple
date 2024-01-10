import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:stemple/helper/viewType.dart';
import 'package:stemple/helper/util.dart';
import 'package:stemple/views/full_view/itgeek_widget_full_view.dart';

import 'package:stemple/modelClass/data_model.dart';

class ItgeekWidgetBannerImage extends StatelessWidget {
  Function(ImageViewData) OnClick;
  ImageViewData imageViewData;
  ItgeekWidgetBannerImage(this.imageViewData, this.OnClick);

  @override
  Widget build(BuildContext context) {
    if (imageViewData.imageViewViewType == ViewType.ImageViewFull.name) {
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

class FullImage extends StatefulWidget {
  ImageViewData imageViewData;

  FullImage(this.imageViewData);

  @override
  State<FullImage> createState() => _FullImageState();
}

class _FullImageState extends State<FullImage> {
  var controller = TextEditingController();

  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        mytext = controller.text;
      });
    });
    controller.text = widget.imageViewData.description!;
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  String mytext = "";

  @override
  Widget build(BuildContext context) {
    var titleTextColor = Util.getColorFromHex(
        widget.imageViewData.styleProperties!.titleTextColor!);
    var descriptionTextColor = Util.getColorFromHex(
        widget.imageViewData.styleProperties!.descriptionTextColor!);
    var bgColor = Util.getColorFromHex(
        widget.imageViewData.styleProperties!.backgroundColor!);
    int maxLines =
        widget.imageViewData.styleProperties!.descriptionTextNoOfLines!;
    double fontSize =
        widget.imageViewData.styleProperties!.descriptionTextFontSize!;
    return Container(
        margin: EdgeInsets.all(
            widget.imageViewData.styleProperties!.backgroundMargin!),
        padding: EdgeInsets.all(
            widget.imageViewData.styleProperties!.backgroundPadding!),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              widget.imageViewData.styleProperties!.backgroundRadius!),
          color: bgColor,
        ),
        width: double.infinity,
        child: Column(children: <Widget>[
          Container(
            margin:
                EdgeInsets.all(widget.imageViewData.styleProperties!.margin!),
            padding:
                EdgeInsets.all(widget.imageViewData.styleProperties!.padding!),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    widget.imageViewData.styleProperties!.radius!),
                child: widget.imageViewData.imageSrc != ""
                    ? CachedNetworkImage(
                        fit: BoxFit.cover,
                        width: double.infinity,
                        imageUrl: widget.imageViewData.imageSrc!,
                        placeholder: (context, url) => Image.asset(
                              'assets/images/placeholder-image.jpg',
                              package: 'jsontoview',
                              fit: BoxFit.fill,
                            ),
                        errorWidget: (context, url, error) => Image.asset(
                              'assets/images/placeholder-image.jpg',
                              package: 'jsontoview',
                              fit: BoxFit.fill,
                            ))
                    : Container()),
          ),
          widget.imageViewData.title != ""
              ? Container(
                  margin: EdgeInsets.all(
                      widget.imageViewData.styleProperties!.margin!),
                  padding: EdgeInsets.all(
                      widget.imageViewData.styleProperties!.padding!),
                  alignment:
                      widget.imageViewData.styleProperties!.alignment! == "left"
                          ? Alignment.centerLeft
                          : widget.imageViewData.styleProperties!.alignment! ==
                                  "right"
                              ? Alignment.centerRight
                              : Alignment.center,
                  child: Text(
                    widget.imageViewData.title!,
                    style: TextStyle(
                        color: titleTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: widget
                            .imageViewData.styleProperties!.titleTextFontSize!),
                    maxLines: widget
                        .imageViewData.styleProperties!.titleTextNoOfLines!,
                  ),
                )
              : Container(),
          LayoutBuilder(builder: (context, size) {
            var span = TextSpan(
              text: mytext,
              style: TextStyle(fontSize: fontSize),
            );

            // Use a textpainter to determine if it will exceed max lines
            var tp = TextPainter(
              maxLines: maxLines,
              textDirection: TextDirection.ltr,
              text: span,
            );

            // trigger it to layout
            tp.layout(maxWidth: size.maxWidth);

            // whether the text overflowed or not
            var exceeded = tp.didExceedMaxLines;
            print("cjvgffmdf ${exceeded}");

            return widget.imageViewData.description != ""
                ? Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(
                            widget.imageViewData.styleProperties!.margin!),
                        padding: EdgeInsets.all(
                            widget.imageViewData.styleProperties!.padding!),
                        alignment:
                            widget.imageViewData.styleProperties!.alignment! ==
                                    "left"
                                ? Alignment.centerLeft
                                : widget.imageViewData.styleProperties!
                                            .alignment! ==
                                        "right"
                                    ? Alignment.centerRight
                                    : Alignment.center,
                        child: Text.rich(
                          span,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: descriptionTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: widget.imageViewData.styleProperties!
                                  .descriptionTextFontSize!),
                          maxLines: maxLines,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("more clicked");

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ItgeekWidgetFullView(
                                      widget.imageViewData.imageSrc!,
                                      widget.imageViewData.title!,
                                      widget.imageViewData.description!,
                                      widget.imageViewData.styleProperties!
                                          .alignment,
                                      widget.imageViewData.styleProperties!
                                          .titleTextColor,
                                      widget.imageViewData.styleProperties!
                                          .descriptionTextColor,
                                      widget.imageViewData.styleProperties!
                                          .titleTextFontSize!,
                                      widget.imageViewData.styleProperties!
                                          .descriptionTextFontSize!,
                                      widget.imageViewData.styleProperties!
                                          .padding!,
                                      widget.imageViewData.styleProperties!
                                          .margin!,
                                      widget.imageViewData.styleProperties!
                                          .backgroundColor,
                                      widget.imageViewData.styleProperties!
                                          .backgroundColor)));
                        },
                        child: Text(
                          exceeded ? 'Read More' : '',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                    ],
                  )
                : Container();
          })
        ]));
  }
}

class HalfImage extends StatefulWidget {
  ImageViewData imageViewData;

  HalfImage(this.imageViewData);

  @override
  State<HalfImage> createState() => _HalfImageState();
}

class _HalfImageState extends State<HalfImage> {
  var controller = TextEditingController();

  @override
  void initState() {

    print("init invoked");
    controller.addListener(() {
      setState(() {
        mytext = controller.text;
      });
    });
    controller.text = widget.imageViewData.description!;
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  String mytext = "";

  @override
  Widget build(BuildContext context) {
    var titleTextColor = Util.getColorFromHex(
        widget.imageViewData.styleProperties!.titleTextColor!);
    var descriptionTextColor = Util.getColorFromHex(
        widget.imageViewData.styleProperties!.descriptionTextColor!);
    var bgColor = Util.getColorFromHex(
        widget.imageViewData.styleProperties!.backgroundColor!);
    int maxLines =
        widget.imageViewData.styleProperties!.descriptionTextNoOfLines!;
    double fontSize =
        widget.imageViewData.styleProperties!.descriptionTextFontSize!;

    return Container(
      margin: EdgeInsets.all(
          widget.imageViewData.styleProperties!.backgroundMargin!),
      padding: EdgeInsets.all(
          widget.imageViewData.styleProperties!.backgroundPadding!),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            widget.imageViewData.styleProperties!.backgroundRadius!),
        color: bgColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin:
                EdgeInsets.all(widget.imageViewData.styleProperties!.margin!),
            padding:
                EdgeInsets.all(widget.imageViewData.styleProperties!.padding!),
            // width: MediaQuery.of(context).size.width * .04,
            height: 220,

            // decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(10.0),
            // image: DecorationImage(
            //   image: NetworkImage(
            //     widget.imageViewData.imageSrc!,
            //   ),
            //   fit: BoxFit.cover,
            // ),
            // ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    widget.imageViewData.styleProperties!.radius!),
                child:
                 CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: widget.imageViewData.imageSrc!,
                        placeholder: (context, url) => Image.asset(
                              'assets/images/placeholder-image.jpg',
                              package: 'jsontoview',
                              fit: BoxFit.fill,
                            ),
                        errorWidget: (context, url, error) => Image.asset(
                              'assets/images/placeholder-image.jpg',
                              package: 'jsontoview',
                              fit: BoxFit.fill,
                            ))
                
                ),
          ),
          Flexible(child:
           Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.imageViewData.title != ""
                    ? Container(
                        margin: EdgeInsets.all(
                            widget.imageViewData.styleProperties!.margin!),
                        padding: EdgeInsets.all(
                            widget.imageViewData.styleProperties!.padding!),
                        alignment:
                            widget.imageViewData.styleProperties!.alignment! ==
                                    "left"
                                ? Alignment.centerLeft
                                : widget.imageViewData.styleProperties!
                                            .alignment! ==
                                        "right"
                                    ? Alignment.centerRight
                                    : Alignment.center,
                        child: Text(
                          widget.imageViewData.title!,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: widget.imageViewData.styleProperties!
                                  .titleTextFontSize!,
                              color: titleTextColor),
                          maxLines: widget.imageViewData.styleProperties!
                              .titleTextNoOfLines!,
                          textAlign: TextAlign.center,
                        ),
                      )
                    : Container(),
                LayoutBuilder(builder: (context, size) {
                  var span = TextSpan(
                    text: mytext,
                    style: TextStyle(fontSize: fontSize),
                  );

                  // Use a textpainter to determine if it will exceed max lines
                  var tp = TextPainter(
                    maxLines: maxLines,
                    textAlign: TextAlign.left,
                    textDirection: TextDirection.ltr,
                    text: span,
                  );

                  // trigger it to layout
                  tp.layout(maxWidth: size.maxWidth);

                  // whether the text overflowed or not
                  var exceeded = tp.didExceedMaxLines;
                  print("cjvgffmdf ${exceeded}");
                  return
                   Expanded(  child: 
                   Container(
                        margin: EdgeInsets.all(
                            widget.imageViewData.styleProperties!.margin!),
                        padding: EdgeInsets.all(
                            widget.imageViewData.styleProperties!.padding!),
                        // height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              widget.imageViewData.styleProperties!.radius!),
                          color: bgColor.withOpacity(0.5),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            widget.imageViewData.description != ""
                                ? Column(
                                    children: [
                                      Container(
                                        child: Text.rich(
                                          span,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: widget
                                                  .imageViewData
                                                  .styleProperties!
                                                  .descriptionTextFontSize!,
                                              color: descriptionTextColor!),
                                          maxLines: maxLines,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          print("more clicked");

                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ItgeekWidgetFullView(
                                                          widget.imageViewData
                                                              .imageSrc!,
                                                          widget.imageViewData
                                                              .title!,
                                                          widget.imageViewData
                                                              .description!,
                                                          widget
                                                              .imageViewData
                                                              .styleProperties!
                                                              .alignment,
                                                          widget
                                                              .imageViewData
                                                              .styleProperties!
                                                              .titleTextColor,
                                                          widget
                                                              .imageViewData
                                                              .styleProperties!
                                                              .descriptionTextColor,
                                                          widget
                                                              .imageViewData
                                                              .styleProperties!
                                                              .titleTextFontSize!,
                                                          widget
                                                              .imageViewData
                                                              .styleProperties!
                                                              .descriptionTextFontSize!,
                                                          widget
                                                              .imageViewData
                                                              .styleProperties!
                                                              .padding!,
                                                          widget
                                                              .imageViewData
                                                              .styleProperties!
                                                              .margin!,
                                                          widget
                                                              .imageViewData
                                                              .styleProperties!
                                                              .backgroundColor,
                                                          widget
                                                              .imageViewData
                                                              .styleProperties!
                                                              .backgroundColor)));
                                        },
                                        child: Text(
                                          exceeded ? 'Read More' : '',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  )
                                : Container()
                          ],
                        )
                        ),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
