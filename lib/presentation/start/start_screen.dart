import 'package:daelim_2025/app/router/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  final _title = 'Get Started with \nTracking Your Health!';
  final _description =
      'Calculate your BMI and stay on top of your wellness journey, effortlessly.';

  TextStyle get _titleStyle => TextStyle(
    color: Colors.white,
    fontSize: 25,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
  );

  TextStyle get _descStyle => TextStyle(fontSize: 15, color: Color(0xffc6c3f9));

  // 앱 이름
  Widget _buildAppName() {
    //타이틀 위젯
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

  // 타이틀
  Widget _buildTitle() {
    return Text(
      _title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  // 설명
  Widget _buildDescription() {
    return Text(_description, style: _descStyle);
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6c63ff),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 280,
            margin: const EdgeInsets.symmetric(horizontal: 30),
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
                _buildTitleDesc(),
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
