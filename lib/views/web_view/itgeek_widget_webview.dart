import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:stemple/helper/viewType.dart';

import 'package:stemple/modelClass/data_model.dart';

class ItgeekWidgetWebView extends StatefulWidget {
  WebViewData data;

  ItgeekWidgetWebView(this.data) {}

  @override
  State<ItgeekWidgetWebView> createState() => _ItgeekWidgetWebViewState();
}

class _ItgeekWidgetWebViewState extends State<ItgeekWidgetWebView> {
  late InAppWebViewController _webViewController;

  double _height = 1;

  @override
  Widget build(BuildContext context) {
    print('my webview');

    return Container(
        color: Colors.red,
        // height: 200,
        height: _height,
        margin: EdgeInsets.all(widget.data.styleProperties!.margin!),
        padding: EdgeInsets.all(widget.data.styleProperties!.padding!),
        child: InAppWebView(
            initialUrlRequest: URLRequest(url: WebUri(widget.data!.link!)),
            onWebViewCreated: (InAppWebViewController controller) {
              _webViewController = controller;
              _loadContent(widget.data);
              _webViewController.getContentHeight().then((height) {
                setState(() {
                  print("Height:  " + height.toString());
                  _height = height!.toDouble();
                });
              });
            }));
  }

  _loadContent(WebViewData webViewData) {
    try {
      // _webViewController.setBackgroundColor(color: webViewData.backgroundColor);

      // Load content based on the content type

      if (webViewData.contentType == ViewType.WebViewHtml.name) {


        String decoded = utf8.decode(base64.decode(webViewData.htmlContent!));
print("decoded$decoded");
        _webViewController.loadData(
          data: decoded,
          mimeType: 'text/html',
          encoding: 'utf8',
        );
        print('my webview2${webViewData.contentType}');
      } else {
        _webViewController.loadUrl(
            urlRequest: URLRequest(url: WebUri(webViewData.link!)));
      }
    } catch (e) {
      print('my webview Error loading content: $e');
    }
  }
}
