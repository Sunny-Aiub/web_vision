import 'package:flutter/cupertino.dart';

class CenterText extends StatefulWidget {
  const CenterText({@required this.title, Key key, this.style}) : super(key: key);
  final String title;
  final TextStyle style;

  @override
  _CenterTextState createState() => _CenterTextState();
}

class _CenterTextState extends State<CenterText> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
        child: Text(
          widget.title,
          style: widget.style,
        ),
      ),
    );
  }
}
