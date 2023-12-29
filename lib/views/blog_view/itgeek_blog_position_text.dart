import 'package:flutter/material.dart';

import '../../modelClass/data_model.dart';
import '../../modelClass/page_layout_model.dart';
import '../utils/util.dart';

class ItgeekWidgetBlogPosition extends StatefulWidget {
  BlogViewItems blogViewItems;
StyleProperties style;
  ItgeekWidgetBlogPosition(this.blogViewItems,this.style, {super.key});

  @override
  State<ItgeekWidgetBlogPosition> createState() => _WidgetCallPositionState();
}

class _WidgetCallPositionState extends State<ItgeekWidgetBlogPosition> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(widget.style.radius!.toDouble()),
          color: Util.getColorFromHex(
              widget.style.backgroundColor!)),
      child: Stack(
        children: [
          Container(
            margin:
                EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0, left: 8.0),
            padding: EdgeInsets.only(top: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.transparent,
              image: DecorationImage(
                image: NetworkImage(
                    widget.blogViewItems.blogViewImagePath.toString()),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 15,
            child: Container(
              width: MediaQuery.of(context).size.width - 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // width: 100,
                    decoration: BoxDecoration(
                      color: Util.getColorFromHex(
                              widget.style.backgroundColor!)
                          .withOpacity(0.5),
                    ),
                    child: Text(
                      widget.blogViewItems.blogViewTitle.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Util.getColorFromHex(widget
                              .style.titleTextColor
                              .toString())),
                      maxLines: 2,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    // width: 100,
                    decoration: BoxDecoration(
                      color: Util.getColorFromHex(
                              widget.style.backgroundColor!)
                          .withOpacity(0.5),
                    ),
                    child: Text(
                      widget.blogViewItems.blogViewDescription.toString(),
                      style: TextStyle(
                          fontSize: 14,
                          color: Util.getColorFromHex(widget
                              .style.descriptionTextColor
                              .toString())),
                      maxLines: 2,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
