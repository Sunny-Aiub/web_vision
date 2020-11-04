import 'package:flutter/cupertino.dart';

class ParagraphText extends StatefulWidget {
  const ParagraphText({@required this.title, Key key, this.style}) : super(key: key);
  final String title;
  final TextStyle style;

  @override
  _ParagraphTextState createState() => _ParagraphTextState();
}

class _ParagraphTextState extends State<ParagraphText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 0),
        child: Text(
          widget.title,
          style: widget.style,
          textAlign: TextAlign.left,
        ),
    );
  }
}
