import 'package:daelim_2025/app/router/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  final _title = 'Get Started with \nTracking Your Health!';
  final _description =
      'Calculate your BMI and stay on top of your wellness journey, effortlessly.';

  // 타이틀 텍스트 스타일
  TextStyle get _titleStyle => TextStyle(
    color: Colors.white,
    fontSize: 25,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
  );
  // 설명 텍스트 스타일
  TextStyle get _descStyle => TextStyle(fontSize: 15, color: Color(0xffc6c3f9));

  // 앱 이름
  Widget _buildAppName() {
    return Text(
      "BMI Calculator",
      style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  // 타이틀, 설명 합친거거
  Widget _buildTitleDesc() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: _title, style: _titleStyle),
          TextSpan(text: '\n'),
          WidgetSpan(child: SizedBox(height: 30)),
          TextSpan(text: _description, style: _descStyle),
        ],
      ),
    );
  }

  // // 타이틀(설명이랑 합쳐놓은 위젯써서 이거 안씀)
  // Widget _buildTitle() {
  //   return Text(_title, style: _titleStyle);
  // }

  // // 설명(타이틀이랑 합쳐놓은 위젯 써서 이거 안씀)
  // Widget _buildDescription() {
  //   return Text(_description, style: _descStyle);
  // }

  // 버튼
  Widget _buildStartButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () => context.go(AppRoute.main.toPath),
        style: ElevatedButton.styleFrom(foregroundColor: Color(0xff081854)),
        child: Text('Get Started'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6c63ff),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 280,
            margin: const EdgeInsets.symmetric(horizontal: 30), //vertical=>상,하
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAppName(),
                SizedBox(height: 60),
                Image.asset('assets/images/bmi_bike.png'),
                SizedBox(height: 95),
                // _buildTitle(),
                // SizedBox(height: 15),
                // _buildDescription(),
                _buildTitleDesc(), // <= Title + Desc
                SizedBox(height: 40),
                _buildStartButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
