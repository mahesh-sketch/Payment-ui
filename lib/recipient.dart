

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'all_List.dart';

class Item2 {
  final String urlimg;
  final String write;
  Item2({required this.urlimg,required this.write});
}

class Person extends StatefulWidget {
  const Person({Key? key}) : super(key: key);

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  double boxHeight =60;
  double boxWidth = 60;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: gm.length,
      itemBuilder: (context, index) {
        Item2 like = gm[index];
   return Column(
     mainAxisAlignment: MainAxisAlignment.start,
     children: [
       Padding(
         padding: const EdgeInsets.all(18.0),
         child: Container(
           height: 50,
           width: 50,
           decoration: BoxDecoration(
        color: CupertinoColors.black,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: NetworkImage(like.urlimg),fit: BoxFit.cover)
           ),
         ),
       ),
       Text(like.write,style: TextStyle(fontSize: 18),),
     ],
   );
    },);
  }
}
