import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../manger/color.dart';

class Person extends StatelessWidget {
  const Person({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            color: ColorsManager.background,
            height: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: ColorsManager.bordercirqel, width: 3)),
                      child: Stack(children: [
                        CircleAvatar(
                          backgroundColor: ColorsManager.cirqel,
                          radius: 30,
                        ),
                        Image(image: AssetImage("assets/image/1.jpg"))
                      ],)
                    ),
                    alignment: Alignment.center),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Osama Gatban",
                        style: TextStyle(fontSize: 20, color: Color(0xffF2F2F2)),
                      ),
                      Text(
                        "Typing...",
                        style: TextStyle(fontSize: 12, color: Color(0xff098073)),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: const Text(
                        "20:10",
                        style: TextStyle(fontSize: 16, color: Color(0xffF2F2F2)),
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        ));
  }
}
