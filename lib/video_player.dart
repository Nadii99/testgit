import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

class VideoExample extends StatefulWidget {
  // final String url;
  @override
  // VideoExample({Key keyyy, @required this.url,})
  //     : super(key: keyyy);
  _SamplePlayerState createState() => _SamplePlayerState();
}

class _SamplePlayerState extends State<VideoExample> {
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    // Screen.keepOn(true);
    _chewieController = ChewieController(
        videoPlayerController: VideoPlayerController.network(
            "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4"),
        // _chewieController=ChewieController(
        // videoPlayerController: VideoPlayerController.asset("videos/bee.mp4"),
        //  "https://sdm.telewebion.com/devices/_definst_/tv1-adaptive.stream/kerman-300_default/index.m3u8?wmsAuthSignn"
        aspectRatio: 16 / 9,
        autoInitialize: true,
        autoPlay: false,
        looping: true,
        allowMuting: true,
        allowedScreenSleep: false,
        // isLive: true,
        showControls: true,
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Directionality(
              child: Text(
                ' مشکل در اتصال به سرور لطفا درساعت دیگر مراجعه کنید\nویا با پشتیبانی شبکه ققنوس تماس بگیرید',
                style: TextStyle(color: Colors.white),
              ),
              textDirection: TextDirection.rtl,
            ),
          );
        });
  }

  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      _chewieController!.videoPlayerController.play();
      _chewieController!.play();
    } else {
      _chewieController!.play();
      _chewieController!.videoPlayerController.play();
    }
  }

  @override
  void dispose() {
    _chewieController!.videoPlayerController.dispose();
    _chewieController!.dispose();
    // flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            // AppBar( backgroundColor:HexColor('d50000') ,
            AppBar(
                backgroundColor: Colors.green,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Image.asset(
                        'assets/Picture1.png',
                        fit: BoxFit.cover,
                        height: 100,
                      ),
                    ),
                    Image.asset(
                      'assets/Picture1.png',
                      fit: BoxFit.cover,
                      height: 50,
                    )
                  ],
                )),
        backgroundColor: Colors.white12,
        body: Center(
          child: Chewie(
            controller: _chewieController!,
          ),
        ));
  }
}
