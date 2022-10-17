import 'package:bank_system/pageTransition.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'all_List.dart';
import 'main.dart';

class CardItem {
  final String urlImage;
  final String sal;
  final String up;
  final String main;
  //constructor
  const CardItem(
      {required this.urlImage,
      required this.sal,
      required this.up,
      required this.main});
}

class Salary extends StatefulWidget {
  const Salary({Key? key}) : super(key: key);

  @override
  State<Salary> createState() => _SalaryState();
}

class _SalaryState extends State<Salary> {
  int _selectedIndex = 0;

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: am.length,
      itemBuilder: (context, index) {
        CardItem car = am[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            // select to change color
            onTap: () => _onSelected(index),
            child: Container(
              width: 190,
              decoration: BoxDecoration(
                color: (_selectedIndex == index)
                    ? Color(hexcolor('#D2F6F5'))
                    : Colors.black87,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 50),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(car.urlImage),
                            fit: BoxFit.contain)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    car.up,
                    style: TextStyle(
                        color: (_selectedIndex == index)
                            ? Colors.black87
                            : Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    car.sal,
                    style:GoogleFonts.ubuntu(textStyle: TextStyle(color: Colors.grey)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, PageAnime(w: Payment()));
                    },
                    child: Container(
                      height: 35,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                          child: Text(
                        car.main,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
