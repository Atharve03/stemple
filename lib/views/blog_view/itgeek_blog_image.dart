import 'package:flutter/material.dart';


import '../../modelClass/data_model.dart';
import '../utils/util.dart';

class ItgeekWidgetBlog extends StatelessWidget {
  BlogViewItems blogViewItems;
  ItgeekWidgetBlog(this.blogViewItems);

  @override
  Widget build(BuildContext context) {
    var textColor = Util.getColorFromHex(
        blogViewItems.blogViewTextTitleColor!);
    var bgColor = Util.getColorFromHex(blogViewItems.blogViewBackgroundColor!);

    return Container(
      
            padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(blogViewItems.blogViewRadius!),
          color: bgColor,
        ),
        width: double.infinity,
        child: Column(children: [
             ClipRRect(
              borderRadius:
                  BorderRadius.circular(blogViewItems.blogViewRadius!),
              child: Image.network(
                blogViewItems.blogViewImagePath!,
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
            blogViewItems.blogViewDescription.toString(),
            style: TextStyle(
                fontSize: 14,
                color: textColor),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        
        ]));
  }
}
