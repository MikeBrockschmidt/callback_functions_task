import 'package:flutter/material.dart';

class InputCounterBox extends StatefulWidget {
  final Color color;
  final ValueChanged<String> onLengthCallback;

  const InputCounterBox({
    super.key,
    required this.color,
    required this.onLengthCallback,
  });

  @override
  State<InputCounterBox> createState() => _InputCounterBoxState();
}

class _InputCounterBoxState extends State<InputCounterBox> {
  int _length = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.color,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: (text) {
                setState(() {
                  _length = text.length;
                });
                widget.onLengthCallback(
                  text,
                );
              },
              decoration: const InputDecoration(
                hintText: 'Text eingeben',
                border: OutlineInputBorder(),
              ),
            ),
            Text('Länge: $_length'),
          ],
        ),
      ),
    );
  }
}
