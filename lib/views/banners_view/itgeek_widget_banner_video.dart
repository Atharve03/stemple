import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


import '../../modelClass/data_model.dart';
import '../utils/util.dart';

class ItgeekWidgetBannerVideo extends StatelessWidget {
  Function(VideoViewData) OnClick;
  VideoViewData videoViewData;
  ItgeekWidgetBannerVideo(this.videoViewData, this.OnClick);

  @override
  Widget build(BuildContext context) {
    var descriptionTextColor = Util.getColorFromHex(videoViewData.styleProperties!.descriptionTextColor!);
    var bgColor = Util.getColorFromHex(videoViewData.styleProperties!.backgroundColor!);

    return InkWell(
        onTap: () {
          OnClick(videoViewData);
        },
        child: Container(
          margin: EdgeInsets.all(videoViewData.styleProperties!.backgroundMargin!),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(videoViewData.styleProperties!.backgroundRadius!),
            color: bgColor,
          ),
          width: double.infinity,
          // color: bgColor,
          child: Column(
            children: [
              MyVideo(videoViewData),
              Padding(
                padding: EdgeInsets.all(videoViewData.styleProperties!.padding!),
                child: Text(
                  videoViewData.description!,
                  style: TextStyle(
                      color: descriptionTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: videoViewData.styleProperties!
                          .descriptionTextFontSize),
                ),
              ),
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