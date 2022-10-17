import 'package:flutter/cupertino.dart';

class PageAnime extends PageRouteBuilder{
  final Widget w;
  PageAnime({required this.w}):super(
    transitionDuration: Duration(seconds: 1),
    transitionsBuilder: (context, animation,
        secondaryAnimation, child) {
      animation = CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
      return ScaleTransition(
        scale: animation,
        child: child,
        alignment: Alignment.center,
      );
    },
    pageBuilder:
        (context, animation, secondaryAnimation) {
      return w;
    },
  );
}