import 'package:flutter/material.dart';

class Animacaotween extends StatefulWidget {
  const Animacaotween({super.key});

  @override
  State<Animacaotween> createState() => _AnimacaotweenState();
}

class _AnimacaotweenState extends State<Animacaotween> {
  static final colorTween = ColorTween(begin: Colors.white, end: Colors.green);
  @override
  Widget build(BuildContext context) {
    return Center(
      /*child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end:6.28), duration: Duration(seconds: 2), builder: (BuildContext context, double angulo, Widget? widget){
        return Transform.rotate(
          angle: angulo,
          child: Image.asset(
            'images/logo.png',
            width: 200,
            height: 200,
          ),
        );
      }),*/

      /*  child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: 1000),
        duration: Duration(seconds: 5),
        builder: (BuildContext context, double tamanho, Widget? widget) {
          return Container(
            alignment: Alignment.center,
            width: tamanho,
            height: 100,
            color: Colors.green,
          );
        },
      ),*/
      child: TweenAnimationBuilder(
        tween: colorTween,
        duration: Duration(seconds: 2),
        builder: (BuildContext context, Color? cor, Widget? widget) {
          return ColorFiltered(
            colorFilter: ColorFilter.mode(
              cor ?? Colors.white,
              BlendMode.overlay,
            ),
            child: widget,
          );
        },
        child: Image.asset('images/logo.png', width: 200, height: 200),
      ),
    );
  }
}
