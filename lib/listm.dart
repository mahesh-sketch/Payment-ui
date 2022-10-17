import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Listwidget extends StatelessWidget {
 final IconData it;
 final String write;

 Listwidget({required this. it, required this.write});
  @override
  Widget build(BuildContext context) {
    return ListTile(
       leading: Icon(it),
       //trailing: Icon(Icons.feed),
       title:Text(write,style: GoogleFonts.ubuntu()),
    );
  }
}
