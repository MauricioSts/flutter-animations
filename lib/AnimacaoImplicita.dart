import 'package:flutter/material.dart';

class Animacaoimplicita extends StatefulWidget {
  const Animacaoimplicita({super.key});

  @override
  State<Animacaoimplicita> createState() => _AnimacaoimplicitaState();
}

class _AnimacaoimplicitaState extends State<Animacaoimplicita> {
  bool _status = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          width: _status ? 200 : 600,
          height: _status ? 200 : 300,
          color: Colors.purpleAccent,
          duration: Duration(seconds: 1),
          curve: Curves.elasticInOut,
          child: Image.asset('images/logo.png'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _status = !_status;
            });
          },
          child: Text("Alterar"),
        ),
      ],
    );
  }
}
