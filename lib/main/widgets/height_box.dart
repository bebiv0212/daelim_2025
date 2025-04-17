import 'package:daelim_2025/presentation/common/widget/white_box.dart';
import 'package:flutter/material.dart';

class HeightBox extends StatefulWidget {
  const HeightBox({super.key});

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
            '$_height',
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
            onChanged: (double value) {
              setState(() {
                _height = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
