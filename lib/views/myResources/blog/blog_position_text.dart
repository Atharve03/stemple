import 'package:stemple/helper/util.dart';
import 'package:stemple/modelClass/DashboardModel.dart';
import 'package:flutter/material.dart';

class WidgetCallPosition extends StatefulWidget {
  BlogViewItems blogViewItems;
  WidgetCallPosition(this.blogViewItems, {super.key});
  @override
  State<WidgetCallPosition> createState() => _WidgetCallPositionState();
}

class _WidgetCallPositionState extends State<WidgetCallPosition> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widget.blogViewItems.blogViewRadius!),
  color: Util.getColorFromHex( widget.blogViewItems.blogViewBackgroundColor!)
              ),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0, left: 8.0),
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
                       color: Util.getColorFromHex( widget.blogViewItems.blogViewTextBackgroundColor!).withOpacity(0.5),
                    ),
                    child: Text(
                      widget.blogViewItems.blogViewTitle.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Util.getColorFromHex(widget
                              .blogViewItems.blogViewTextTitleColor
                              .toString())),
                      maxLines: 2,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    // width: 100,
                    decoration: BoxDecoration(
                       color: Util.getColorFromHex( widget.blogViewItems.blogViewTextBackgroundColor!).withOpacity(0.5),
                    ),
                    child: Text(
                      widget.blogViewItems.blogViewDescription.toString(),
                      style: TextStyle(
                          fontSize: 14,
                          color: Util.getColorFromHex(widget
                              .blogViewItems.blogViewTextDescriptionColor
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
