// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:daelim_2025/presentation/common/widget/white_box.dart';

enum Gender { male, female }

class GenderBox extends StatefulWidget {
  final Function(Gender gender) onChanged;
  const GenderBox({Key? key, required this.onChanged}) : super(key: key);

  @override
  State<GenderBox> createState() => _GenderBoxState();
}

class _GenderBoxState extends State<GenderBox> {
  Gender _gender = Gender.male;
  @override
  Widget build(BuildContext context) {
    return WhiteBox(
      padding: EdgeInsets.all(25),
      child: Column(
        spacing: 10,
        children: [
          Text('Gender', style: TextStyle(fontSize: 18)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Male', style: TextStyle(fontSize: 10)),
              Switch.adaptive(
                value: _gender == Gender.female,
                onChanged: (value) {
                  setState(() {
                    //1번째 방법법
                    // if (value) {
                    //   _gender = Gender.female;
                    // } else {
                    //   _gender = Gender.male;
                    // }
                    _gender = value ? Gender.female : Gender.male;
                  });

                  widget.onChanged(_gender);
                },
              ),
              Text('Female', style: TextStyle(fontSize: 10)),
            ],
          ),
        ],
      ),
    );
  }
}
