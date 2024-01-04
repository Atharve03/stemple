import 'package:flutter/material.dart';

import '../../modelClass/data_model.dart';
import '../faq_view/full_view.dart';
import '../utils/util.dart';

class ItgeekWidgetBannerImageButton extends StatelessWidget {
  Function(ButtonViewData) OnClick;
  ButtonViewData buttonViewData;
  ItgeekWidgetBannerImageButton(this.buttonViewData, this.OnClick);

  @override
  Widget build(BuildContext context) {
    if (buttonViewData.buttonViewViewType == "Top") {
      return InkWell(
          onTap: () {
            OnClick(buttonViewData);
          },
          child:TopButton(buttonViewData));
    } else {
      return InkWell(
          onTap: () {
            OnClick(buttonViewData);
          },
          child: BottomButton(buttonViewData));
    }
  }
}

class BottomButton extends StatefulWidget {
  ButtonViewData buttonViewData;
  BottomButton(this.buttonViewData);

  @override
  State<BottomButton> createState() => _BottomButtonState();
}

class _BottomButtonState extends State<BottomButton> {
   var controller = TextEditingController();

  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        mytext = controller.text;
      });
    });
    controller.text = widget.buttonViewData.description!;
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
    var titleTextColor = Util.getColorFromHex(widget.buttonViewData.styleProperties!.titleTextColor!);
    var descriptionTextColor = Util.getColorFromHex(widget.buttonViewData.styleProperties!.descriptionTextColor!);
    var bgColor = Util.getColorFromHex(widget.buttonViewData.styleProperties!.backgroundColor!);
    var buttonTextColor = Util.getColorFromHex(widget.buttonViewData.buttonFontColor!);
    var buttonBackgroundColor = Util.getColorFromHex(widget.buttonViewData.buttonBackgroundColor!);
    int maxLines =
        widget.buttonViewData.styleProperties!.descriptionTextNoOfLines!;
    double fontSize =
        widget.buttonViewData.styleProperties!.descriptionTextFontSize!;
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(widget.buttonViewData.styleProperties!.margin!),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.buttonViewData.styleProperties!.backgroundRadius!),
          color: bgColor,
          image: DecorationImage(
            image: NetworkImage(widget.buttonViewData.styleProperties!.imageSrc!), fit: BoxFit.cover,
            // Padding(
            //   padding: EdgeInsets.all(buttonViewData.styleProperties!.padding!),
            //   child: ClipRRect(
            //     borderRadius:
            //         BorderRadius.circular(buttonViewData.styleProperties!.radius!),
            //     child: Image.network(
            //       buttonViewData.styleProperties!.imageSrc!,
            //       fit: BoxFit.cover,
            //       width: double.infinity,
            //       // color: imageBackgroundColor,
            //     ),
            //   ),
            // ),
          )
        ),
        width: double.infinity,
        // child: Column(
          // children: [
          //   Positioned(
          //       top: 0,
          //       bottom: 0,
          //       left: 0,
          //       right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  //   Row(mainAxisAlignment: MainAxisAlignment.center, children: [    
                  widget.buttonViewData.title != "" ? Padding(
                        padding: EdgeInsets.all(widget.buttonViewData.styleProperties!.padding!),
                        child: Text(
                          widget.buttonViewData.title!,
                        maxLines: widget.buttonViewData.styleProperties!.titleTextNoOfLines!,
                          style: TextStyle(
                              color: titleTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: widget.buttonViewData.styleProperties!.titleTextFontSize!),
                        ),
                      ) : Container(),
                    // ]),
                         LayoutBuilder(builder: (context, size) {
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
                    return widget.buttonViewData.description != "" ? Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(widget.buttonViewData.styleProperties!.padding!),
                          child: Text.rich(
                          span,
                            maxLines: maxLines,
                            style: TextStyle(
                                color: descriptionTextColor,
                                fontWeight: FontWeight.bold,
                                fontSize: fontSize),
                          ),
                        ),
                        InkWell(
                        onTap: () {
                          print("more clicked");

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ItgeekWidgetFullView(
                                      widget.buttonViewData.styleProperties!.imageSrc!,
                                      widget.buttonViewData.title!,
                                      widget.buttonViewData.description!,
                                      widget.buttonViewData.styleProperties!
                                          .alignment,
                                      widget.buttonViewData.styleProperties!
                                          .titleTextColor,
                                      widget.buttonViewData.styleProperties!
                                          .descriptionTextColor,
                                      widget.buttonViewData.styleProperties!
                                          .titleTextFontSize!,
                                      widget.buttonViewData.styleProperties!
                                          .descriptionTextFontSize!,
                                      widget.buttonViewData.styleProperties!
                                          .padding!,
                                      widget.buttonViewData.styleProperties!
                                          .margin!,
                                      widget.buttonViewData.styleProperties!
                                          .backgroundColor,
                                      widget.buttonViewData.styleProperties!
                                          .backgroundColor)));
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
                    ) : Container();
                         }),
                    Padding(
                      padding: EdgeInsets.all(
                          widget.buttonViewData.styleProperties!.padding!),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                print("button banner clicked");
                              },
                              child: Text(
                                widget.buttonViewData.buttonText!,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: buttonBackgroundColor,
                              ),
                            )
                          ]),
                    ),
                  ],
                ))
          // ],
        // ),
      // ),
    );
  }
}

class TopButton extends StatefulWidget {
  ButtonViewData buttonViewData;
  TopButton(this.buttonViewData);

  @override
  State<TopButton> createState() => _TopButtonState();
}

class _TopButtonState extends State<TopButton> {
   var controller = TextEditingController();

  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        mytext = controller.text;
      });
    });
    controller.text = widget.buttonViewData.description!;
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
    var titleTextColor = Util.getColorFromHex(widget.buttonViewData.styleProperties!.titleTextColor!);
    var descriptionTextColor = Util.getColorFromHex(widget.buttonViewData.styleProperties!.descriptionTextColor!);
    var bgColor = Util.getColorFromHex(widget.buttonViewData.styleProperties!.backgroundColor!);
    var buttonTextColor = Util.getColorFromHex(widget.buttonViewData.buttonFontColor!);
    var buttonBackgroundColor = Util.getColorFromHex(widget.buttonViewData.buttonBackgroundColor!);
    int maxLines =
        widget.buttonViewData.styleProperties!.descriptionTextNoOfLines!;
    double fontSize =
        widget.buttonViewData.styleProperties!.descriptionTextFontSize!;
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(widget.buttonViewData.styleProperties!.margin!),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.buttonViewData.styleProperties!.backgroundRadius!),
          color: bgColor,
          image: DecorationImage(
            image: NetworkImage(widget.buttonViewData.styleProperties!.imageSrc!),
            // Padding(
            //   padding: EdgeInsets.all(buttonViewData.styleProperties!.padding!),
            //   child: ClipRRect(
            //     borderRadius:
            //         BorderRadius.circular(buttonViewData.styleProperties!.radius!),
            //     child: Image.network(
            //       buttonViewData.styleProperties!.imageSrc!,
            //       fit: BoxFit.cover,
            //       width: double.infinity,
            //       // color: imageBackgroundColor,
            //     ),
            //   ),
            // ),
          )
        ),
        width: double.infinity,
        // child: Column(
          // children: [
          //   Positioned(
          //       top: 0,
          //       bottom: 0,
          //       left: 0,
          //       right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  //   Row(mainAxisAlignment: MainAxisAlignment.center, children: [    
                   Padding(
                      padding: EdgeInsets.all(
                          widget.buttonViewData.styleProperties!.padding!),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                print("button banner clicked");
                              },
                              child: Text(
                                widget.buttonViewData.buttonText!,
                                style: TextStyle(
                                  color: buttonTextColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: buttonBackgroundColor,
                              ),
                            )
                          ]),
                    ),
                  Padding(
                        padding: EdgeInsets.all(widget.buttonViewData.styleProperties!.padding!),
                        child: Text(
                          widget.buttonViewData.title!,
                        maxLines: widget.buttonViewData.styleProperties!.titleTextNoOfLines!,
                          style: TextStyle(
                              color: titleTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: widget.buttonViewData.styleProperties!.titleTextFontSize!),
                        ),
                      ),
                    // ]),
                         LayoutBuilder(builder: (context, size) {
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
                  return  Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.all(widget.buttonViewData.styleProperties!.padding!),
                          child: Text.rich(
                           span,
                           overflow: TextOverflow.ellipsis,
                            maxLines: maxLines,
                            style: TextStyle(
                                color: descriptionTextColor,
                                fontWeight: FontWeight.bold,
                                fontSize: fontSize),
                          ),
                        ),
                        InkWell(
                        onTap: () {
                          print("more clicked");

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ItgeekWidgetFullView(
                                      widget.buttonViewData.styleProperties!.imageSrc,
                                      widget.buttonViewData.title!,
                                      widget.buttonViewData.description!,
                                      widget.buttonViewData.styleProperties!
                                          .alignment,
                                      widget.buttonViewData.styleProperties!
                                          .titleTextColor,
                                      widget.buttonViewData.styleProperties!
                                          .descriptionTextColor,
                                      widget.buttonViewData.styleProperties!
                                          .titleTextFontSize!,
                                      widget.buttonViewData.styleProperties!
                                          .descriptionTextFontSize!,
                                      widget.buttonViewData.styleProperties!
                                          .padding!,
                                      widget.buttonViewData.styleProperties!
                                          .margin!,
                                      widget.buttonViewData.styleProperties!
                                          .backgroundColor,
                                      widget.buttonViewData.styleProperties!
                                          .backgroundColor)));
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
                  );
                         })
                   ],
                ))
          // ],
        // ),
      // ),
    );
  }
}




  