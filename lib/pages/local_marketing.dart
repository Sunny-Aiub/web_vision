import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_vision_app/common_helper/center_text.dart';
import 'package:web_vision_app/common_helper/paragraph_text_content.dart';
import 'package:web_vision_app/common_helper/theme_scafold.dart';
import 'package:web_vision_app/common_helper/theme_style.dart';

class LocalMarketingPage extends StatefulWidget {
  @override
  _LocalMarketingPageState createState() => _LocalMarketingPageState();
}

class _LocalMarketingPageState extends State<LocalMarketingPage> {
  @override
  Widget build(BuildContext context) {
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 1000;


    return ThemeScaffold(
      elevation: 5.0,
      pageTitle: 'Web Vision',
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: (!displayMobileLayout) ? 140 : 8),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  children: [
                    ParagraphText(
                      title: 'Increase Your Online Visibility Locally',
                      style: contentTitleFontSize,
                    ),
                    ParagraphText(
                      title:
                          "From setting up local pay-per-click programs for specific areas to optimizing local organic listings for visibility in local search results, TopSpot provides online marketing for local businesses in the Houston area and across the nation.",
                      style: contentNormalFontSize,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Flexible(
                          child: RaisedButton(
                            onPressed: () {},
                            color: Colors.blueAccent,
                            child: Text(
                              "ASK A Question",
                              style: contentNormalWhiteFontSize,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Flexible(
                          child: RaisedButton(
                            onPressed: () {},
                            color: Colors.blueAccent,
                            child: Text(
                              "CONTACT",
                              style: contentNormalWhiteFontSize,
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: 300,
                child: Image.asset(
                  'lm1.png',fit: BoxFit.fill,
                ),
                margin: EdgeInsets.all(8.0),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top:28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 20), child: Icon(Icons.radio_button_checked)),
                      ParagraphText(
                        title: 'Works Offline',
                        style: contentNormalGreyFontSize,
                      ),
                      ParagraphText(
                        title: 'With intentionally small tooling, a tiny API, zero configuration, you are set.',
                        style: contentNormalFontSize,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20), child: Icon(Icons.radio_button_checked)),
                        ParagraphText(
                          title: 'Works Offline',
                          style: contentNormalGreyFontSize,
                        ),
                        ParagraphText(
                          title: 'With intentionally small tooling, a tiny API, zero configuration, you are set.',
                          style: contentNormalFontSize,
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 20), child: Icon(Icons.radio_button_checked)),
                      ParagraphText(
                        title: 'Works Offline',
                        style:contentNormalGreyFontSize,
                      ),
                      ParagraphText(
                        title: 'With intentionally small tooling, a tiny API, zero configuration, you are set.',
                        style: contentNormalFontSize,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                 height: 400,
                child: Image.asset(
                  'pwa-reliable.png',
                  fit: BoxFit.fill,
                ),
                margin: EdgeInsets.all(8.0),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Availability regardless of connection',
                      style: contentSubTitleFontSize,
                    ),
                    ParagraphText(
                      title:
                          'Progressive Web Apps are installable and live on the users home screen, without the need for an app store. They offer an immersive full screen experience with help from a web app manifest file and can even re-engage users with web push notifications.',
                      style: contentNormalFontSize,
                    ),
                    ParagraphText(
                      title:
                          'The Web App Manifest allows you to control how your app appears and how its launched. You can specify home screen icons, the page to load when the app is launched, screen orientation, and even whether or not to show the browser chrome.',
                      style: contentNormalFontSize,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Availability regardless of connection',
                      style: contentSubTitleFontSize,
                    ),
                    ParagraphText(
                      title:
                          'Progressive Web Apps are installable and live on the users home screen, without the need for an app store. They offer an immersive full screen experience with help from a web app manifest file and can even re-engage users with web push notifications.',
                      style: contentNormalFontSize,
                    ),
                    ParagraphText(
                      title:
                          'The Web App Manifest allows you to control how your app appears and how its launched. You can specify home screen icons, the page to load when the app is launched, screen orientation, and even whether or not to show the browser chrome.',
                      style: contentNormalFontSize,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: 400,
                child: Image.asset(
                  'pwa-reliable.png',
                  fit: BoxFit.fill,
                ),
                margin: EdgeInsets.all(8.0),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
