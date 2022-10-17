import 'package:bank_system/all_List.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItem1 {
  final String img;
  final String head;
  final String sub;
  final String t1, t2;
  CardItem1({
    required this.img,
    required this.head,
    required this.sub,
    required this.t1,
    required this.t2,
  });
}

class Alltile extends StatefulWidget {
  const Alltile({Key? key}) : super(key: key);

  @override
  State<Alltile> createState() => _AlltileState();
}

class _AlltileState extends State<Alltile> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pm.length,
      itemBuilder: (context, index) {
        CardItem1 gar = pm[index] as CardItem1;
        return ListTile(
          leading: Container(
            width: 50,
            height: 47,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(gar.img), fit: BoxFit.cover)),
            // child: CircleAvatar(
            //   radius: 25,
            //   backgroundImage: AssetImage(gar.img),
            // ),
          ),
          title: Text(
            gar.head,
            style: GoogleFonts.ubuntu(textStyle:TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
            ),
          subtitle: Text(
            gar.sub,
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Column(
            children: [
              Text(
                gar.t1,
                style:GoogleFonts.ubuntu(textStyle: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                gar.t2,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        );
      },
    );
  }
}
