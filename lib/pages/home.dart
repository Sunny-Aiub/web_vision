import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:web_vision_app/common_helper/center_text.dart';
import 'package:web_vision_app/common_helper/chewie_item_player.dart';
import 'package:web_vision_app/common_helper/paragraph_text_content.dart';
import 'package:web_vision_app/common_helper/theme_scafold.dart';
import 'package:web_vision_app/common_helper/theme_style.dart';
import 'package:web_vision_app/models/category.dart';

class HomePage extends StatefulWidget {
  static var route = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String url = services[0].url;
  ChewieController chewieController;
  VideoPlayerController videoPlayerController = VideoPlayerController.network(
    services[0].url, //
  );

  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 2 / 1,
      autoPlay: false,
      // Prepare the video to be played and display the first frame
      autoInitialize: true,
      placeholder: Container(
        color: Colors.grey,
      ),
      looping: false,
      // Errors can occur for example when trying to play a video
      // from a non-existent URL
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 1000;

    return ThemeScaffold(
      elevation: 5.0,
      pageTitle: 'Web Vision',
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Text(
              'Hassle Free Web Design',
              style: contentTitleFontSize,
            ),
          ),
          Center(
            child: Text(
              'Quick, Easy, Affordable',
              style: contentSubTitleFontSize,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: (!displayMobileLayout) ? 140 : 8),
            child: Text(
              'Learn how the 4 pillars of our process add up to your success.',
              style: contentNormalFontSize,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //video container
          Container(
            padding: EdgeInsets.symmetric(horizontal: (!displayMobileLayout) ? 140 : 0),
            //height: (!displayMobileLayout) ? 400 : 440,
            decoration: BoxDecoration(
              // color: Colors.black12,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.0),
                bottomRight: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
                bottomLeft: Radius.circular(4.0),
              ),
            ),
            child: (!displayMobileLayout)
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.7 - 200,
                          child: Chewie(
                            controller: chewieController,
                          )),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3 - 100,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: services.length,
                            itemBuilder: (BuildContext context, int position) {
                              return Center(
                                  child: GestureDetector(
                                      onTap: () {
                                        print('position -- $position');

                                        setState(() {
                                          currentIndex = position;
                                          videoPlayerController = VideoPlayerController.network(
                                            services[position].url, //
                                          );
                                          chewieController = ChewieController(
                                            videoPlayerController: videoPlayerController,
                                            aspectRatio: 2 / 1,
                                            autoPlay: true,
                                            // Prepare the video to be played and display the first frame
                                            autoInitialize: true,
                                            placeholder: Container(
                                              color: Colors.grey,
                                            ),
                                            looping: false,
                                            // Errors can occur for example when trying to play a video
                                            // from a non-existent URL
                                            errorBuilder: (context, errorMessage) {
                                              return Center(
                                                child: Text(
                                                  errorMessage,
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                              );
                                            },
                                          );
                                        });
                                      },
                                      child: Column(
                                        children: [
                                          Divider(
                                            color: Colors.grey,
                                            height: 1,
                                          ),
                                          ListTile(
                                            title: Text(
                                              services[position].title,
                                              style: TextStyle(color: (currentIndex == position) ? Colors.blue : Colors.black),
                                            ),
                                            leading: Icon(Icons.play_circle_fill_sharp, color: (currentIndex == position) ? Colors.blue : Colors.black),
                                            subtitle: Text(
                                              services[position].subTitle,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          (position == services.length - 1)
                                              ? Divider(
                                                  color: Colors.grey,
                                                  height: 1,
                                                )
                                              : Divider(),
                                        ],
                                      )));
                            }),
                      )
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width - 16,
                          // height:  MediaQuery.of(context).size.width - 16,
                          child: Chewie(
                            controller: chewieController,
                          )),
                      // Container(
                      //   //width: MediaQuery.of(context).size.width - 16,
                      //   height: 140,
                      //   child: ListView.builder(
                      //       shrinkWrap: true,
                      //       scrollDirection: Axis.horizontal,
                      //       itemCount: services.length,
                      //       itemBuilder: (BuildContext context, int position) {
                      //         return Center(
                      //             child: GestureDetector(
                      //                 onTap: () {
                      //                   setState(() {
                      //                     currentIndex = position;
                      //                     videoPlayerController = VideoPlayerController.network(
                      //                       services[position].url, //
                      //                     );
                      //                     chewieController = ChewieController(
                      //                       videoPlayerController: videoPlayerController,
                      //                       aspectRatio: 2 / 1,
                      //                       autoPlay: true,
                      //                       // Prepare the video to be played and display the first frame
                      //                       autoInitialize: true,
                      //                       placeholder: Container(
                      //                         color: Colors.grey,
                      //                       ),
                      //                       looping: false,
                      //                       // Errors can occur for example when trying to play a video
                      //                       // from a non-existent URL
                      //                       errorBuilder: (context, errorMessage) {
                      //                         return Center(
                      //                           child: Text(
                      //                             errorMessage,
                      //                             style: TextStyle(color: Colors.white),
                      //                           ),
                      //                         );
                      //                       },
                      //                     );
                      //                   });
                      //                 },
                      //                 child: Container(
                      //                   width: MediaQuery.of(context).size.width * 0.5,
                      //                   padding: EdgeInsets.only(top: 10),
                      //                   child: Wrap(
                      //                     children: [
                      //                       ListTile(
                      //                         title: Text(
                      //                           services[position].title,
                      //                           style: TextStyle(color: (currentIndex == position) ? Colors.blue : Colors.black),
                      //                         ),
                      //                         leading: Icon(Icons.play_circle_fill_sharp, color: (currentIndex == position) ? Colors.blue : Colors.black),
                      //                         subtitle: Text(services[position].subTitle),
                      //                       ),
                      //                     ],
                      //                   ),
                      //                 )));
                      //       }),
                      // )
                    ],
                  ),
          ),

          SizedBox(
            height: 20,
          ),

          Column(
            children: [
              Container(
                height: 1.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //direction: Axis.horizontal,
                  //crossAxisAlignment: WrapCrossAlignment.center,
                  //alignment: WrapAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(8.0),
                      height: 50,
                      width: 150,
                      child: Image.asset('assets/7.png'),
                      margin: EdgeInsets.all(8.0),
                    ),
                    Container(height: 50, width: 150, padding: EdgeInsets.all(8.0), child: Image.asset('assets/2.png')),
                    Container(height: 50, width: 150, padding: EdgeInsets.all(8.0), child: Image.asset('assets/3.png')),
                    Container(height: 50, width: 150, padding: EdgeInsets.all(8.0), child: Image.asset('assets/4.png')),
                    Container(height: 50, width: 150, padding: EdgeInsets.all(8.0), child: Image.asset('assets/5.png')),
                    Container(height: 50, width: 150, padding: EdgeInsets.all(8.0), child: Image.asset('assets/6.png')),
                    Container(height: 50, width: 150, padding: EdgeInsets.all(8.0), child: Image.asset('assets/1.png')),
                  ],
                ),
              ),
              Container(
                height: 1.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: (!displayMobileLayout) ? 140 : 8, vertical: 10),
            child: Text(
              "Everything you need.",
              style: new TextStyle(
                color: Colors.blueGrey,
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: (!displayMobileLayout) ? 140 : 8, vertical: 10),
            child: Text("Availability regardless of connection", style: contentSubTitleFontSize),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: (!displayMobileLayout) ? 140 : 8),
            child: Card(
              elevation: 0,
              color: Colors.transparent,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: (displayMobileLayout) ? MediaQuery.of(context).size.width - 24: MediaQuery.of(context).size.width * 0.7 - 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ParagraphText(
                          title: "The world is quickly becoming a place where brands differentiate themselves not on services, or price, but on the quality of the experience they provide.",
                          style: contentNormalFontSize,
                        ),
                        ParagraphText(
                          title: "Whether in-store, on the phone, or online, customer expectations are high. But on digital channels where you can’t offer personal"
                              " service, how do you ensure your website isn’t just functional, but provide expirience similar to your business?",
                          style: contentNormalFontSize,
                        ),
                        ParagraphText(
                          title: "It all starts with a conversation. Guided by your goals in mind, brand style and personality we create beautiful digital experiences in sync with the behaviors and expirience your target market.",
                          style: contentNormalFontSize,
                        ),
                        (displayMobileLayout)
                            ? Center(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: ChewieListItem(
                                    videoPlayerController: VideoPlayerController.network(
                                      'https://ak03-video-cdn.slidely.com/promoVideos/videos/5c/5d/5c5df66b8dad8e7e603264db/preview.mp4?dv=1', //
                                    ),
                                  ),
                                ),
                              )
                            : Container(),
                        ParagraphText(
                          title:
                              'It’s also important for us to really get to know your competitors. We want to understand who’s out there, how they set customer expectations, and where there may be opportunities to differentiate your brand or outperform the competition.',
                          style: contentNormalFontSize,
                        ),
                        ParagraphText(
                          title:
                              'Most important of all, we go deep into the data to discover the behavior, motivations, and needs of your audience. This involves qualitative and quantitative research, surveys, and interviews – any information we can lay our hands on.',
                          style: contentNormalFontSize,
                        ),
                        ParagraphText(
                          title: 'The goal at the end is results. Its measurable impact for your business. If done well your website is search engine optimized, easy to find. Your website insipred trust and triger the action.',
                          style: contentNormalFontSize,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  (!displayMobileLayout)
                      ? Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: ChewieListItem(
                            videoPlayerController: VideoPlayerController.network(
                              'https://ak03-video-cdn.slidely.com/promoVideos/videos/5c/5d/5c5df66b8dad8e7e603264db/preview.mp4?dv=1', //
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: (!displayMobileLayout) ? 140 : 8),
            child: Text("Our team's work with Projects", style: contentSubTitleFontSize),
          ),

          SizedBox(height: 16,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: (!displayMobileLayout) ? 140 : 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(

                children: <Widget>[
                  Container(
                    height: 350,
                    width: 350,
                    child: Image.asset('assets/project.jpg'),
                  ),
                  Container(
                    height: 350,
                    width: 350,
                    child: Image.asset('assets/project.jpg'),
                  ),
                  Container(
                    height: 350,
                    width: 350,
                    child: Image.asset('assets/project.jpg'),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueAccent,
                child: Center(child: Text("Join the hundreds of business owners using WebVision to build incredible website.", style:  GoogleFonts.roboto(fontSize: 26, color: Colors.white, fontWeight: FontWeight.w500))),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
