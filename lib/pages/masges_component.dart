import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../manger/color.dart';
import 'classmaseg.dart';

class MasegeComponnt extends StatelessWidget {
  const MasegeComponnt({
    super.key,
    required this.masege,
  });

  final Masegs masege;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Row(
        mainAxisAlignment: masege.personName != 'Osama_gh'
            ? MainAxisAlignment.start
            : MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: masege.personName != 'Osama_gh'
                      ? ColorsManager.backgroundmasege
                      : ColorsManager.masegsend,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              margin: EdgeInsets.only(left: 25),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Offstage(
                         offstage:masege.personName == 'Osama_gh',
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(masege.personName,style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                            masege.Textmaseg,
                            textAlign: masege.personName != 'Osama_gh'
                                ?TextAlign.start:TextAlign.end,
                            style: TextStyle(fontSize: 16),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: Text(masege.Timedate),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
