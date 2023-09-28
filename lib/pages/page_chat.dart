import 'package:chat_app/pages/classChat.dart';
import 'package:flutter/material.dart';

import '../manger/color.dart';
import 'classmaseg.dart';
import 'masges_component.dart';

class PageChat extends StatefulWidget {
  List<Masegs> masseg;
  final Chat chat;

  PageChat(this.masseg, {super.key, required this.chat});

  @override
  State<PageChat> createState() => _PageChatState();
}

class _PageChatState extends State<PageChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ColorsManager.cirqel,
      appBar: AppBar(
        backgroundColor: ColorsManager.typing,
        actions: [
          IconButton(onPressed: () {}, icon:  Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
        title: Row(
          children: [
            CircleAvatar(
                // radius: 30,
                backgroundImage: AssetImage(widget.chat.userimage)),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(widget.chat.personName)  ,

                  Text(
                    widget.chat.is_Typing? "typing..." : widget.chat.lastSeen   ,
                    style: TextStyle(color: ColorsManager.cirqel, fontSize: 15,fontWeight: FontWeight.w300),
                  )
                ],
              ),
            )
          ],
        ),
        leading: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_ios)),
            ]),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Divider(
                          color: ColorsManager.typing,
                          thickness: 2,
                          height: 91,
                          endIndent: 20,
                          indent: 20),
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 80,
                            color: ColorsManager.cirqel,
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Today",
                                  style: TextStyle(fontSize: 22),
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            Masegs maseg = widget.masseg[index];
                            return MasegeComponnt(masege: maseg);
                          },
                          itemCount: widget.masseg.length,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: SizedBox(
                    width: 284,
                    height: 60,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.emoji_emotions_outlined),
                          hintText: "Massege",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  bottomLeft: Radius.circular(0),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20)))),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(ColorsManager.typing),
                    ),
                    onPressed: () {},
                    child: Icon(Icons.keyboard_voice,size: 20,)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
