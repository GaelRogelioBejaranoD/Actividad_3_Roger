import 'package:flutter/material.dart';

//! AnimatedDefaultTextStyle

class TextoAnimadoRoger extends StatefulWidget {
  const TextoAnimadoRoger({Key? key}) : super(key: key);

  @override
  State<TextoAnimadoRoger> createState() => _TextoAnimadoRogerState();
}

class _TextoAnimadoRogerState extends State<TextoAnimadoRoger> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: 120,
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 300),
            style: TextStyle(
              fontSize: _fontSize,
              color: _color,
              fontWeight: FontWeight.bold,
            ),
            child: const Text('Roger texto'),
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _fontSize = _first ? 90 : 60;
              _color = _first ? Colors.blue : Colors.red;
              _first = !_first;
            });
          },
          child: const Text(
            "Texto Roger",
          ),
        )
      ],
    );
  }
}
