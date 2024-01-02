import 'package:flutter/material.dart';

import '../../modelClass/data_model.dart';
import '../../modelClass/page_layout_model.dart';
import '../utils/util.dart';

class ItgeekWidgetBlog extends StatelessWidget {
  BlogViewItems blogViewItems;
  StyleProperties style;
  ItgeekWidgetBlog(this.blogViewItems,this.style);

  @override
  Widget build(BuildContext context) {
    var textColor = Util.getColorFromHex(
        style.titleTextColor!);
    var bgColor = Util.getColorFromHex(style.backgroundColor!);

    return Container(
      
            padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(style.radius!.toDouble()),
          color: bgColor,
        ),
        width: double.infinity,
        child: Column(children: [
             ClipRRect(
              borderRadius:
                  BorderRadius.circular(style.radius!.toDouble()),
              child: Image.network(
                blogViewItems.blogViewImagePath !,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
          ),
          
        SizedBox(
          height: 5,
        ),
          Text(
            blogViewItems.blogViewTitle!,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: textColor),
            maxLines: 2,
            textAlign: TextAlign.start,
          ),
          Text(
            blogViewItems.blogViewDescription!,
            style: TextStyle(
                fontSize: 14,
                color: textColor),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        
        ]));
  }
}
