import 'package:flutter/material.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  int _conunt = 0;

  void _handleIncreaseCount() {
    setState(() {
      _conunt++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Flutter Demo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _handleIncreaseCount,
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('버튼 클릭 시 횟수 증가', style: TextStyle(fontSize: 20)),
              Text('$_conunt', style: TextStyle(fontSize: 40)),
            ],
          ),
        ),
      ),
    );
  }
}
