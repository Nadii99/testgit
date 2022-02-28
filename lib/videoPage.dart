import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    // Screen.keepOn(true);
    _chewieController = ChewieController(
        // videoPlayerController: VideoPlayerController.network(
        //     "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4"),
        // _chewieController=ChewieController(
        videoPlayerController: VideoPlayerController.asset("video/bee.mp4"),
        //  "https://sdm.telewebion.com/devices/_definst_/tv1-adaptive.stream/kerman-300_default/index.m3u8?wmsAuthSignn"
        aspectRatio: 16 / 9,
         materialProgressColors: ChewieProgressColors(   backgroundColor: Colors.grey,
            playedColor: Color(0xffFF9068),
            bufferedColor: Colors.grey,
            handleColor: Color(0xffFF4B1F)),
        // cupertinoProgressColors: ChewieProgressColors(
        //     backgroundColor: Colors.red,
        //     playedColor: Colors.green,
        //     bufferedColor: Colors.amber,
        //     handleColor: Colors.brown),
        autoInitialize: true,
        autoPlay: false,
        looping: false,
        allowMuting: true,
        allowedScreenSleep: false,
        isLive: false,
        showControls: true,
        showOptions: true,
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Directionality(
              child: Text(
                'خطا در پخش',
                style: TextStyle(color: Colors.white),
              ),
              textDirection: TextDirection.rtl,
            ),
          );
        });
  }

  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   if (state == AppLifecycleState.paused) {
  //     _chewieController!.videoPlayerController.play();
  //     _chewieController!.play();
  //   } else {
  //     _chewieController!.play();
  //     _chewieController!.videoPlayerController.play();
  //   }
  // }

  @override
  void dispose() {
    _chewieController!.videoPlayerController.dispose();
    _chewieController!.dispose();
    // flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          height: myHeight,
          width: myWidth,
          child: ListView(
            children: [
              Container(
                // color: Colors.amber,
                child: Column(
                  children: [
                    Container(
                      height: myHeight * 0.3,
                      width: myWidth,
                      child: Chewie(
                        controller: _chewieController!,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'لورم ایپسوم',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/Picture8.png',
                            width: myWidth * 0.2,
                            height: myHeight * 0.1,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'موسپیا مرول',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'فصل5',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              '2020 - 2015',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/Picture13.png',
                          width: myWidth * 0.05,
                        ),
                        SizedBox(width: myWidth * 0.07),
                        Image.asset(
                          'assets/Picture14.png',
                          width: myWidth * 0.04,
                        ),
                        SizedBox(width: myWidth * 0.07),
                        Image.asset(
                          'assets/Picture11.png',
                          width: myWidth * 0.05,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'توضیحات',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
