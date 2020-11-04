import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:web_vision_app/common_helper/theme_drawer.dart';
import 'package:web_vision_app/common_helper/theme_style.dart';

import 'mouse_cursor.dart';

class ThemeScaffold extends StatelessWidget {
  const ThemeScaffold({@required this.body, @required this.pageTitle, this.elevation = 0.0, Key key}) : super(key: key);

  final Widget body;
  final String pageTitle;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return _ThemeScaffold(body: body, pageTitle: pageTitle, elevation: elevation);
  }
}

class _ThemeScaffold extends StatefulWidget {
  _ThemeScaffold({Key key, this.body, this.pageTitle, this.elevation}) : super(key: key);

  final Widget body;
  final String pageTitle;
  final double elevation;

  @override
  _ThemeScaffoldState createState() => _ThemeScaffoldState();
}

class _ThemeScaffoldState extends State<_ThemeScaffold> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isExpanded = true;
  bool isLoginMenuExpanded = false;
  int notificationCount = 9;
  String userType;

  void _openEndDrawer() {
    _scaffoldKey.currentState.openEndDrawer();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 1000;
    return Row(
      children: [
        if (!displayMobileLayout && isExpanded == false)
          const AppDrawer(
            permanentlyDisplay: true,
          ),
        Expanded(
          child: new Scaffold(
            key: _scaffoldKey,
            appBar: new AppBar(
              backgroundColor: Colors.white,
              iconTheme: new IconThemeData(color: Color.fromRGBO(105, 105, 105, 1)),
              automaticallyImplyLeading: displayMobileLayout,
              elevation: widget.elevation > 0 ? widget.elevation : 0.0,
              title: FlatButton(
                onPressed: () {
                  print('Custom Website');
                },
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left:100.0),
                      child: new Text(widget.pageTitle, style: ScaffoldAppBarTitle),
                    )),
              ),
              actions: (!displayMobileLayout)
                  ? [
                      FlatButton(
                        hoverColor: Colors.lightBlueAccent.withOpacity(0.1),
                        onPressed: () {
                          print('Custom Website');
                          Navigator.pushNamed(context, '/custom_website');
                        },
                        child: new Text(
                          'CUSTOM WEBSITE',
                          style: ScaffoldAppBarIconText,
                        ),
                      ),
                      FlatButton(
                        hoverColor: Colors.lightBlueAccent.withOpacity(0.1),
                        onPressed: () {
                          print('Local Marketing');
                          Navigator.pushNamed(context, '/local_marketing');

                        },
                        child: new Text('LOCAL MARKETING', style: ScaffoldAppBarIconText),
                      ),
                      FlatButton(
                        hoverColor: Colors.lightBlueAccent.withOpacity(0.1),
                        onPressed: () {
                          print('Contact Us');
                        },
                        child: new Text('CONTACT US', style: ScaffoldAppBarIconText),
                      ),
                      SizedBox(
                        width: 140,
                        height: 8,
                      )
                    ]
                  : null,
            ),
            drawer: displayMobileLayout ? new AppDrawer(permanentlyDisplay: true) : null,
            endDrawerEnableOpenDragGesture: userType != null ? true : false,
            body: widget.body,

            bottomSheet: Container(
              height: 60.0,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 140),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Footer v3.15',
                      style: contentNormalFontSize,
                    ),
                  ),
                ],
              ),
            ),

          ),
        )
      ],
    );
  }

  Future<void> _navigateTo(BuildContext context, String routeName) async {
    await Navigator.pushNamed(context, routeName);
  }
}
