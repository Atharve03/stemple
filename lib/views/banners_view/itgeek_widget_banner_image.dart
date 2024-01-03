

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
    var bgColor = Util.getColorFromHex(widget.imageViewData.styleProperties!.backgroundColor!);
    int maxLines = widget.imageViewData.styleProperties!.descriptionTextNoOfLines!;
    double fontSize = widget.imageViewData.styleProperties!.descriptionTextFontSize!;
    return Container(
        margin: EdgeInsets.all(widget.imageViewData.styleProperties!.backgroundMargin!),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.imageViewData.styleProperties!.backgroundRadius!),
          color: bgColor,
        ),
        width: double.infinity,
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(widget.imageViewData.styleProperties!.padding!),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(widget.imageViewData.styleProperties!.radius!),
              child:  widget.imageViewData.imageSrc!.isNotEmpty?    Image.network(
                widget.imageViewData.imageSrc!,
                fit: BoxFit.cover,
                width: double.infinity,
              ):Container()
            ),
          ),
          LayoutBuilder(builder: (context,size)
          {
  var span = TextSpan(
              text: mytext,
              style: TextStyle(fontSize: fontSize),
            );

            // Use a textpainter to determine if it will exceed max lines
            var tp = TextPainter(
              maxLines: maxLines,
              // textAlign: TextAlign.left,
              // textAlign: widget.imageViewData.styleProperties!.alignment! == "left" ? TextAlign.left : widget.imageViewData.styleProperties!.alignment == "right" ? TextAlign.right : TextAlign.center,

              textDirection: TextDirection.ltr,
              text: span,
            );

            // trigger it to layout
            tp.layout(maxWidth: size.maxWidth);

            // whether the text overflowed or not
            var exceeded = tp.maxLines;
   print("cjvgffmdf ${exceeded}");
          
          widget.imageViewData.title != ""
              ? Container(
                                                            alignment:  widget.imageViewData.styleProperties!.alignment! == "left" ? Alignment.centerLeft : widget.imageViewData.styleProperties!.alignment! == "right" ? Alignment.centerRight : Alignment.center,

                  padding: EdgeInsets.all(
                      widget.imageViewData.styleProperties!.padding!),
                  child: Text(
                    widget.imageViewData.title!,
                    style: TextStyle(
                        color: titleTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: widget.imageViewData
                            .styleProperties!.titleTextFontSize!),
                              maxLines: widget.imageViewData.styleProperties!.titleTextNoOfLines!,
                  ),
                )
              : Container();
          SizedBox(
            height: 5,
          );
         return widget.imageViewData.description != ""
              ? Column(
                children: [
                  Container(
                                                                alignment:  widget.imageViewData.styleProperties!.alignment! == "left" ? Alignment.centerLeft : widget.imageViewData.styleProperties!.alignment! == "right" ? Alignment.centerRight : Alignment.center,

                      padding: EdgeInsets.all(
                          widget.imageViewData.styleProperties!.padding!),
                      child: Text.rich(
                        span,
                        overflow: TextOverflow.ellipsis,
                        
                        style: TextStyle(
                            color: descriptionTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: widget.imageViewData.styleProperties!.descriptionTextFontSize!),
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
                                      widget.imageViewData.styleProperties!.alignment,
                                      widget.imageViewData.styleProperties!.titleTextColor,
                                      widget.imageViewData.styleProperties!.descriptionTextColor,
                                      widget.imageViewData.styleProperties!.titleTextFontSize!,
                                      widget.imageViewData.styleProperties!.descriptionTextFontSize!,
                                      widget.imageViewData.styleProperties!.padding!,
                                      widget.imageViewData.styleProperties!.margin!,
                                      widget.imageViewData.styleProperties!.backgroundColor,
                                      widget.imageViewData.styleProperties!.backgroundColor
                                      
                                      
                                      )));
             
                          },
            child: Text(
              exceeded != null ? 'Read More' : '',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
                ],
              )
              : Container();
               
           
  })
        ])

        );
  }
}

class HalfImage extends StatelessWidget {
  ImageViewData imageViewData;

  HalfImage(this.imageViewData);

  @override
  Widget build(BuildContext context) {
    var titleTextColor = Util.getColorFromHex(
        imageViewData.styleProperties!.titleTextColor!);
    var descriptionTextColor = Util.getColorFromHex(
        imageViewData.styleProperties!.descriptionTextColor!);
    var bgColor = Util.getColorFromHex(imageViewData.styleProperties!.backgroundColor!);


    return Container(
      margin: EdgeInsets.all(imageViewData.styleProperties!.backgroundMargin!),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(imageViewData.styleProperties!.backgroundRadius!),
        color: bgColor,
      ),
      padding: EdgeInsets.all(imageViewData.styleProperties!.backgroundPadding!),
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
                  borderRadius:
                      BorderRadius.circular(imageViewData.styleProperties!.radius!),
                  color: bgColor.withOpacity(0.5),
                ),
                padding: EdgeInsets.all(imageViewData.styleProperties!.padding!),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    imageViewData.title != ""
                        ? Container(
                                            alignment:  imageViewData.styleProperties!.alignment! == "left" ? Alignment.centerLeft : imageViewData.styleProperties!.alignment! == "right" ? Alignment.centerRight : Alignment.center,

                            child: Text(
                              imageViewData.title!,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: imageViewData.styleProperties!.titleTextFontSize!,
                                  color: titleTextColor),
                              maxLines: imageViewData.styleProperties!.titleTextNoOfLines!,
                              // textAlign: imageViewData.styleProperties!.alignment! == "left" ? TextAlign.left : imageViewData.styleProperties!.alignment == "right" ? TextAlign.right : TextAlign.center,
                            ),
                          )
                        : Container(),
                    SizedBox(
                      height: 5,
                    ),
                    imageViewData.description != ""
                        ? Container(
                                                                      alignment:  imageViewData.styleProperties!.alignment! == "left" ? Alignment.centerLeft : imageViewData.styleProperties!.alignment! == "right" ? Alignment.centerRight : Alignment.center,

                            child: Text(
                              imageViewData.description!,
                              style: TextStyle(
                                  fontSize: imageViewData.styleProperties!.descriptionTextFontSize!,
                                  color: descriptionTextColor),
                              maxLines: imageViewData.styleProperties!.descriptionTextNoOfLines!,
                              // textAlign: TextAlign.center,
                              textAlign: imageViewData.styleProperties!.alignment! == "left" ? TextAlign.left : imageViewData.styleProperties!.alignment == "right" ? TextAlign.right : TextAlign.center,

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
