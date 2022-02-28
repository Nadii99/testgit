// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class VideoPage extends StatefulWidget {
//   const VideoPage({Key? key}) : super(key: key);

//   @override
//   _VideoPageState createState() => _VideoPageState();
// }

// class _VideoPageState extends State<VideoPage> {
//   late VideoPlayerController _controller;
//   Future<void>? _initializeVideoPlayerFuture;

//   @override
//   void initState() {
//     _controller = VideoPlayerController.asset("video/bee.mp4",videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true
//     ));
//     _initializeVideoPlayerFuture = _controller.initialize();

//     _controller.setLooping(true);
//     _controller.setVolume(1.0);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double myHeight = MediaQuery.of(context).size.height;
//     double myWidth = MediaQuery.of(context).size.width;
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.black,
//         body: Container(
//           height: myHeight,
//           width: myWidth,
//           child: ListView(
//             children: [
//               Container(
//                 color: Colors.amber,
//                 child: Column(
//                   children: [
//                     Container(
//                       height: myHeight * 0.3,
//                       width: myWidth,
//                       child: FutureBuilder(
//                         future: _initializeVideoPlayerFuture,
//                         builder: (context, snapshot) {
//                           if (snapshot.connectionState ==
//                               ConnectionState.done) {
//                             return Center(
//                               child: AspectRatio(
//                                 aspectRatio: _controller.value.aspectRatio,
//                                 child: VideoPlayer(_controller),
//                               ),
//                             );
//                           } else {
//                             return Center(
//                               child: CircularProgressIndicator(),
//                             );
//                           }
//                         },
//                       ),
//                     ),
//                     IconButton(
//                       icon: Icon(
//                         _controller.value.isPlaying
//                             ? Icons.pause
//                             : Icons.play_arrow,
//                         size: 20,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           if (_controller.value.isPlaying) {
//                             _controller.pause();
//                           } else {
//                             _controller.play();
//                           }
//                         });
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//                 child: Align(
//                     alignment: Alignment.centerRight,
//                     child: Text(
//                       'لورم ایپسوم',
//                       style: TextStyle(
//                           fontSize: 30,
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold),
//                     )),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 10,top: 30),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Container(
//                           child: Image.asset(
//                             'assets/Picture8.png',
//                             width: myWidth * 0.2,
//                             height: myHeight * 0.1,
//                           ),
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'موسپیا مرول',
//                               style: TextStyle(
//                                   fontSize: 20,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             Text(
//                               'فصل5',
//                               style: TextStyle(
//                                   fontSize: 20,
//                                   color: Colors.grey,
//                                   fontWeight: FontWeight.normal),
//                             ),
//                             Text(
//                               '2015 - 2020',
//                               style: TextStyle(
//                                   fontSize: 20,
//                                   color: Colors.grey,
//                                   fontWeight: FontWeight.normal),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                          Image.asset(
//                             'assets/Picture13.png',
//                             width: myWidth * 0.05,
//                           ),
//                           SizedBox(width: myWidth * 0.07),
//                           Image.asset(
//                             'assets/Picture14.png',
//                             width: myWidth * 0.04,
//                           ),
//                           SizedBox(width: myWidth * 0.07),
//                           Image.asset(
//                             'assets/Picture11.png',
//                             width: myWidth * 0.05,
//                           ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//                 Padding(
//                 padding: const EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 10),
//                 child: Align(
//                     alignment: Alignment.centerRight,
//                     child: Text(
//                       'توضیحات',
//                       style: TextStyle(
//                           fontSize: 30,
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold),
//                     )),
//               ),
//                 Padding(
//                 padding: const EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 10),
//                 child: Align(
//                     alignment: Alignment.centerRight,
//                     child: Text(
//                       'توضیحات',
//                       style: TextStyle(
//                           fontSize: 30,
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold),
//                     )),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
