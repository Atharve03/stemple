import 'package:flutter/material.dart';

import '../../helper/util.dart';
import '../../modelClass/data_model.dart';
import '../itgeek_widget_full_view.dart';

class ItgeekWidgetBlog extends StatefulWidget {
  BlogViewItems blogViewItems;
  StyleProperties style;
  ItgeekWidgetBlog(this.blogViewItems,this.style);

  @override
  State<ItgeekWidgetBlog> createState() => _ItgeekWidgetBlogState();
}

class _ItgeekWidgetBlogState extends State<ItgeekWidgetBlog> {
   var controller = TextEditingController();

  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        mytext = controller.text;
      });
    });
    controller.text = widget.blogViewItems.blogViewDescription!;
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
    var textColor = Util.getColorFromHex(
        widget.style.titleTextColor!);
    var bgColor = Util.getColorFromHex(widget.style.backgroundColor!);
  int maxLines =
      widget.style.descriptionTextNoOfLines!;
    double fontSize =
        widget.style.descriptionTextFontSize!;
    return Container(
      
            padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.style.radius!.toDouble()),
          color: bgColor,
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
             ClipRRect(
              borderRadius:
                  BorderRadius.circular(widget.style.radius!.toDouble()),
              child: Image.network(
                widget.blogViewItems.blogViewImagePath !,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
          ),
          
        // SizedBox(
        //   height: 5,
        // ),
          Text(
            widget.blogViewItems.blogViewTitle!,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: widget.style.titleTextFontSize,
                color: Util.getColorFromHex(widget.style.titleTextColor!)),
            maxLines: 2,
            textAlign: TextAlign.start,
          ),
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
            Container(
                child: Text.rich(
               span,
               overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: fontSize,
                      color: Util.getColorFromHex(widget.style.descriptionTextColor!)),
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
                                  builder: (context) => ItgeekWidgetFullView(
                                      widget.blogViewItems.blogViewImagePath!,
                                      widget.blogViewItems. blogViewTitle!,
                                      widget.blogViewItems.blogViewDescription!,
                                      widget.style
                                          .alignment,
                                      widget.style
                                          .titleTextColor,
                                      widget.style
                                          .descriptionTextColor,
                                      widget.style
                                          .titleTextFontSize!,
                                      widget.style
                                          .descriptionTextFontSize!,
                                      widget.style
                                          .padding!,
                                      widget.style
                                          .margin!,
                                      widget.style
                                          .backgroundColor,
                                      widget.style
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
        
        ]));
  }
}
