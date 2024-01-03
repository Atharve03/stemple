import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../../modelClass/data_model.dart';


class ItgeekWebView extends StatelessWidget {
  WebViewData data;

  ItgeekWebView(this.data) {}
  late InAppWebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(data.styleProperties!.margin!),
        padding: EdgeInsets.all(data.styleProperties!.padding!),
        child: InAppWebView(
            initialUrlRequest: URLRequest(url: WebUri(data!.link!)),
            onWebViewCreated: (InAppWebViewController controller) {
              _webViewController = controller;
              _loadContent(data!);
            }));
  }

  _loadContent(WebViewData webViewData) {
    try {
      // _webViewController.setBackgroundColor(color: webViewData.backgroundColor);

      // Load content based on the content type
      if (webViewData.contentType == 'html') {
        // String htmlContent = '''
        //           <html>
        //           <head><meta name="viewport" content="width=device-width, initial-scale=${webViewData.scaleSize}"></head>
        //          <body> ${webViewData.htmlContent!} </body>
        //           </html>
        //           ''';

        _webViewController.loadData(
          data: webViewData.htmlContent!,
          mimeType: 'text/html',
          encoding: 'utf8',
        );
      } else if (webViewData.contentType == 'link') {
        _webViewController.loadUrl(
            urlRequest: URLRequest(url: WebUri(webViewData.link!)));
      }
    } catch (e) {
      print('Error loading content: $e');
    }
  }
}
