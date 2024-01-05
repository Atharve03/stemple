import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


import '../../helper/util.dart';
import '../../modelClass/data_model.dart';
import '../itgeek_widget_full_view.dart';
class ItgeekWidgetBannerVideo extends StatefulWidget {
  Function(VideoViewData) OnClick;
  VideoViewData videoViewData;
  ItgeekWidgetBannerVideo(this.videoViewData, this.OnClick);

  @override
  State<ItgeekWidgetBannerVideo> createState() => _ItgeekWidgetBannerVideoState();
}

class _ItgeekWidgetBannerVideoState extends State<ItgeekWidgetBannerVideo> {
   var controller = TextEditingController();

  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        mytext = controller.text;
      });
    });
    controller.text = widget.videoViewData.description!;
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
    var descriptionTextColor = Util.getColorFromHex(widget.videoViewData.styleProperties!.descriptionTextColor!);
    var bgColor = Util.getColorFromHex(widget.videoViewData.styleProperties!.backgroundColor!);
  int maxLines =
        widget.videoViewData.styleProperties!.descriptionTextNoOfLines!;
    double fontSize =
        widget.videoViewData.styleProperties!.descriptionTextFontSize!;
    return InkWell(
        onTap: () {
          widget.OnClick(widget.videoViewData);
        },
        child: Container(
          margin: EdgeInsets.all(widget.videoViewData.styleProperties!.backgroundMargin!),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.videoViewData.styleProperties!.backgroundRadius!),
            color: bgColor,
          ),
          width: double.infinity,
          // color: bgColor,
          child: Column(
            children: [
              MyVideo(widget.videoViewData),
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
                    padding: EdgeInsets.all(widget.videoViewData.styleProperties!.padding!),
                    child: Text.rich(
                      span,
                      overflow: TextOverflow.ellipsis,
                      maxLines: maxLines,
                      style: TextStyle(
                          color: descriptionTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: widget.videoViewData.styleProperties!
                              .descriptionTextFontSize),
                    ),
                  ),
                  InkWell(
                        onTap: () {
                          print("more clicked");

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ItgeekWidgetFullView(
                                      widget.videoViewData.styleProperties!.imageSrc,
                                      widget.videoViewData.title!,
                                      widget.videoViewData.description!,
                                      widget.videoViewData.styleProperties!
                                          .alignment,
                                      widget.videoViewData.styleProperties!
                                          .titleTextColor,
                                      widget.videoViewData.styleProperties!
                                          .descriptionTextColor,
                                      widget.videoViewData.styleProperties!
                                          .titleTextFontSize!,
                                      widget.videoViewData.styleProperties!
                                          .descriptionTextFontSize!,
                                      widget.videoViewData.styleProperties!
                                          .padding!,
                                      widget.videoViewData.styleProperties!
                                          .margin!,
                                      widget.videoViewData.styleProperties!
                                          .backgroundColor,
                                      widget.videoViewData.styleProperties!
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
          ),
        ));
  }
}

class MyVideo extends StatefulWidget {
  VideoPlayerController? _videoController;
  Future<void>? _initializeVideoPlayerFuture;
  VideoViewData videoViewData;
  MyVideo(this.videoViewData);
  
  @override
  State<MyVideo> createState() => _MyVideoState();
}

class _MyVideoState extends State<MyVideo> {
  String? srcc;
  @override
  void initState() {
    super.initState();
    srcc = widget.videoViewData.videoViewSrc;

    widget._videoController =
        VideoPlayerController.networkUrl(Uri.parse(srcc!));

    widget._initializeVideoPlayerFuture = widget._videoController!.initialize();
  }

  @override
  Widget build(BuildContext context) {
    var titleTextColor = Util.getColorFromHex(widget.videoViewData.styleProperties!.titleTextColor!);

    return FutureBuilder(
        future: widget._initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Padding(
              padding: EdgeInsets.all(widget.videoViewData.styleProperties!.padding!),
              child: InkWell(
                child: Stack(children: [
                  AspectRatio(
                    aspectRatio: widget._videoController!.value.aspectRatio,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          widget.videoViewData.styleProperties!.radius!),
                      child: VideoPlayer(widget._videoController!),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: widget._videoController!.value.isPlaying
                        ? Text("")
                        : Icon(
                            widget._videoController!.value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                            size: 48,
                          ),
                  ),
                ]),
                onTap: () {
                  setState(() {
                    if (widget._videoController!.value.isPlaying) {
                      widget._videoController!.pause();
                    } else {
                      widget._videoController!.play();
                    }
                  });
                },
              ),
            );
          } else {
            return Padding(
                padding: EdgeInsets.all(
                    widget.videoViewData.styleProperties!.padding!),
                child: const SizedBox(
                  height: 40.0,
                  // width: 10.0,
                  child: Center(child: CircularProgressIndicator()),
                ));
          }
        });
  }

  @override
  void dispose() {
    widget._videoController!.dispose();
    super.dispose();
  }
}