import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double _dimansion = 100;
  Color _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              AnimatedContainer(
                duration: Duration(seconds: 1),
                width: _dimansion,
                height: _dimansion,
                color: _color,
              ),
              Spacer(),
              ElevatedButton(
                child: Text(
                  'Start Animation',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                  ),
                ),
                onPressed: () {
                  _dimansion = _dimansion == 100 ? 200 : 100;
                  _color = _color == Colors.red ? Colors.green : Colors.red;
                  setState(() {});
                },
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
