import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoItems extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;
  final bool autoplay;

  const VideoItems(
      {@required this.videoPlayerController, this.looping, this.autoplay});
  @override
  _VideoItemsState createState() => _VideoItemsState();
}

class _VideoItemsState extends State<VideoItems> {
  ChewieController _chewieController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _chewieController = ChewieController(
        videoPlayerController: widget.videoPlayerController,
        aspectRatio: 9 / 6,
        autoInitialize: true,
        autoPlay: widget.autoplay,
        looping: widget.looping,
        errorBuilder: (context, errorMessage) {
          Text(
            errorMessage,
            style: TextStyle(color: Colors.red),
          );
        });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }
}
