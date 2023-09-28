import 'package:flutter/material.dart';

import '../manger/color.dart';
import '../pages/classChat.dart';
import '../pages/page_chat.dart';

class chatComponnt extends StatelessWidget {
  const chatComponnt({
    super.key,
    required this.chat,
  });

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (c) => PageChat(
                chat.maseges,chat: chat,
            ),));
      },
      child: ListTile(
        title: Text(
          chat.personName,
          style: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          chat.is_Typing ? "typing..." : chat.lastmaseg,
          style: const TextStyle(fontSize: 20),
        ),
        trailing: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            chat.lastSeen,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w900),
          ),
        ),
        leading: Stack(children: [
          CircleAvatar(
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2,
                      color: chat.is_online ? ColorsManager
                          .bordercirqel : ColorsManager
                          .bordercirqelofline)),
            ),
            // backgroundColor: ColorsManager.cirqel,
            radius: 40,
            backgroundImage: AssetImage("${chat.userimage}"),
          )
        ]),
      ),
    );
  }
}