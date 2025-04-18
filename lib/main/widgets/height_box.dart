// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:daelim_2025/presentation/common/widget/white_box.dart';

class HeightBox extends StatefulWidget {
  final Function(double height) onChanged;
  const HeightBox({Key? key, required this.onChanged}) : super(key: key);

  @override
  State<HeightBox> createState() => _HeightBoxState();
}

class _HeightBoxState extends State<HeightBox> {
  double _height = 100.0;

  @override
  Widget build(BuildContext context) {
    return WhiteBox(
      padding: EdgeInsets.all(18),
      child: Column(
        children: [
          Text('Height(CM)', style: TextStyle(fontSize: 18)),
          Text(
            '${_height.toStringAsFixed(1)}',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Color(0xff6c63ff),
            ),
          ),
          Slider(
            value: _height,
            min: 50,
            max: 300,
            activeColor: Color(0xff6c63ff),
            onChanged: (double value) {
              setState(() {
                _height = value;
              });
              widget.onChanged(_height);
            },
          ),
        ],
      ),
    );
  }
}
