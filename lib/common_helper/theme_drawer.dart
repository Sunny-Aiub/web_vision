import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'theme_style.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({@required this.permanentlyDisplay, Key key}) : super(key: key);
  final bool permanentlyDisplay;

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> with RouteAware {
  bool isFavouritesSelected = false;
  int selected;

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      width: 250,
      // child: new Drawer(
      child: new ListTileTheme(
        selectedTileColor: Colors.lightBlueAccent,
        tileColor: Colors.white,
        selectedColor: Colors.white,
        textColor: Colors.black,
        iconColor: Colors.black,
        child: new ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new Container(
              height: 100,
              color: Colors.blue,
              child: new DrawerHeader(
                  child: Container(
                      // margin: EdgeInsets.all(16),
                      child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ))),
            ),
            new ListTile(
              hoverColor: Colors.blue,
              trailing: Icon(Icons.arrow_right_outlined),
              title: Text('Home'),
              onTap: () async {
                await _navigateTo(context, '/home');
              },
            ),
            new ListTile(
              trailing: Icon(Icons.arrow_right_outlined),
              hoverColor: Colors.blue,
              title: Text('Custom Website'),
              onTap: () async {
                await _navigateTo(context, '/custom_website');
                print('#');
              },
            ),
            new ListTile(
              trailing: Icon(Icons.arrow_right_outlined),
              hoverColor: Colors.blue,
              title: Text('Local Marketing'),
              onTap: () async {
                await _navigateTo(context, '/local_marketing');
                print('#');
              },
            ),
            new ListTile(
              trailing: Icon(Icons.arrow_right_outlined),
              hoverColor: Colors.blue,
              title: Text('Contact Us'),
              onTap: () async {
                await _navigateTo(context, '/contact_us');
                print('#');
              },
            ),
          ],
        ),
      ),
      // ),
    );
  }

  Future<void> _navigateTo(BuildContext context, String routeName) async {
    if (widget.permanentlyDisplay) {
      Navigator.pop(context);
    }
    await Navigator.pushNamed(context, routeName);
  }
}
