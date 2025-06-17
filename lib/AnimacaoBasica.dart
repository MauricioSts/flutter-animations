import 'package:flutter/material.dart';

class Animacaobasica extends StatefulWidget {
  const Animacaobasica({super.key});

  @override
  State<Animacaobasica> createState() => _AnimacaobasicaState();
}

class _AnimacaobasicaState extends State<Animacaobasica> {
  bool _status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      /*
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        color: Colors.green,
        padding: EdgeInsets.all(10),
        height: _status ? 0 : 300,
      ),
      */
      body: AnimatedContainer(
        duration: Duration(seconds: 2),
        color: Colors.green,
        padding: EdgeInsets.only(bottom: 100, top: 20),
        alignment: _status ? Alignment.bottomCenter : Alignment.topCenter,
        child: Container(
          height: 50,
          child: Icon(Icons.airplanemode_active, size: 50, color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _status = !_status;
          });
        },
        child: Icon(Icons.add_box),
      ),
    );
  }
}
