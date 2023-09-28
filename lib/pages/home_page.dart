//import 'package:flutter/cupertino.dart';

import 'dart:math';

import 'package:flutter/material.dart';
import '../component/cha_component.dart';
import '../manger/color.dart';
import '../percon/chat.dart';
import 'classmaseg.dart';
import 'classChat.dart';

class PageOne extends StatefulWidget {
  PageOne({super.key});

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  List<Chat> chats = [

    Chat(
      personName: "ALbrofesor",
      lastSeen: "10:10",
      is_online: false,
      is_Typing: false,
      userimage: "assets/image/2.jpg",
      lastmaseg: "ظبطا يا شريكي وأخيرا",
      maseges: [
        Masegs(
            personName: "Osama_gh",
            Timedate: "11:30",
            Textmaseg: "شريكي شلونك طمني عنك حبي عندي سؤال ",
            id: false),
        Masegs(
            personName: "ALbrofesor",
            Timedate: "11:30",
            Textmaseg: "أي شريكي قلي نشالله ما تكون جايب العيد",
            id: true),
        Masegs(
            personName: "Osama_gh",
            Timedate: "11:30",
            Textmaseg: "شريكي شلون بقلب وضع التطبيق من الايت للدارك",
            id: false),
        Masegs(
            personName: "ALbrofesor",
            Timedate: "11:30",
            Textmaseg: "غير الالوان عن طريق الفانكشن يا عرصا",
            id: true),
        Masegs(
            personName: "Osama_gh",
            Timedate: "11:30",
            Textmaseg: "اي صحيح هلق تزكرت",
            id: false),
        Masegs(
            personName: "Osama_gh",
            Timedate: "11:30",
            Textmaseg: " يلا رح سويا وبرجعلك ",
            id: false),
        Masegs(
            personName: "ALbrofesor",
            Timedate: "11:30",
            Textmaseg: "شو طمني نشالله ظبطة ",
            id: true),
        Masegs(
            personName: "Osama_gh",
            Timedate: "11:30",
            Textmaseg: "لا والله لسا عندي فيا شوية مشاكل ",
            id: false),
        Masegs(
            personName: "ALbrofesor",
            Timedate: "11:30",
            Textmaseg: "سويا احسن ما هنيئا لك ",
            id: true),
        Masegs(
            personName: "Osama_gh",
            Timedate: "11:30",
            Textmaseg: "ظبطا يا شريكي وأخيرا",
            id: false),
      ],
    ),
    Chat(
        personName: "abd_ALrhman ",
        lastSeen: "3:20",
        is_online: true,
        is_Typing: true,
        userimage: "assets/image/1.jpg",
        lastmaseg: "يلا نقلع",
        maseges: [
          Masegs(
              personName: "abd_ALrhman ",
              Timedate: "11:30",
              Textmaseg: "يا خرى ايمتا بدنا نبلش دراسة",
              id: true),
          Masegs(personName: "Osama_gh", Timedate: "11:30", Textmaseg: "أيمتا ما بدك بس خبرني قبل 6 ساعات لأشبع نوم", id: false),
          Masegs(
              personName: "abd_ALrhman ",
              Timedate: "11:30",
              Textmaseg: "ست ساعات نوم يا ظالم ",
              id: true),
          Masegs(personName: "Osama_gh", Timedate: "11:30", Textmaseg: "طبعا العقل السليم بالنوم السليم", id: false),
          Masegs(
              personName: "abd_ALrhman ",
              Timedate: "11:30",
              Textmaseg: "كول خرى انتا وسليم جاية على الساعة 3 ",
              id: true),
          Masegs(personName: "Osama_gh", Timedate: "11:30", Textmaseg: "طيب بنتظارك لا تتأخر ", id: false),
          Masegs(
              personName: "abd_ALrhman ",
              Timedate: "11:30",
              Textmaseg: "منكلخا نومة الضهر بتمجد الله ",
              id: true),
          Masegs(personName: "Osama_gh", Timedate: "11:30", Textmaseg: "نومة على البلاط بتمجد الله ", id: false),
          Masegs(
              personName: "abd_ALrhman ",
              Timedate: "11:30",
              Textmaseg: "يلا نقلع",
              id: true),
        ]),
    Chat(
        personName: "Ratb Othman",
        lastSeen: "9:45",
        is_online: false,
        is_Typing: false,
        userimage: "assets/image/2.jpg",
        lastmaseg: "بلكي المسا على التسعة",
        maseges: [
          Masegs(
              personName: "Ratb Othman",
              Timedate: "12:20",
              Textmaseg: "كيفك حبيبي شو الأخبار",
              id: true),
          Masegs(
              personName: "Osama_gh", Timedate: "12:20", Textmaseg: "الحمدلله تمام وانت؟", id: false),
          Masegs(
              personName: "Ratb Othman",
              Timedate: "12:20",
              Textmaseg: "الحمدلله من الله بخير",
              id: true),
          Masegs(
              personName: "Osama_gh", Timedate: "12:20", Textmaseg: "تمام دائما وابدا شو اخبار شغلك؟", id: false),
          Masegs(
              personName: "Ratb Othman",
              Timedate: "12:20",
              Textmaseg: "ماشي حالة والله عصاينين بقصة",
              id: true),
          Masegs(
              personName: "Osama_gh", Timedate: "12:20", Textmaseg: "أيوا الله يوقكن يا شريكي", id: false),
          Masegs(
              personName: "Ratb Othman",
              Timedate: "12:20",
              Textmaseg: "و أنت كيف شغلك؟",
              id: true),
          Masegs(
              personName: "Osama_gh", Timedate: "12:20", Textmaseg: "الحمدلله ترقيت", id: false),
          Masegs(
              personName: "Ratb Othman",
              Timedate: "12:20",
              Textmaseg: "ألف الف مبروك شريكي",
              id: true),
          Masegs(
              personName: "Osama_gh", Timedate: "12:20", Textmaseg: "الله يبارك فيك يا شريكي عقبالك", id: false),
          Masegs(personName: "Ratb Othman", Timedate: "12:20", Textmaseg: "الله يسعده شريكي حول لعنا ", id: true),
          Masegs(personName: "Osama_gh", Timedate: "12:20", Textmaseg: "بلكي المسا على التسعة", id: false),
        ]),
    Chat(
        personName: "Jaudat Shalbe ",
        lastSeen: "6:30",
        is_online: true,
        is_Typing: true,
        userimage: "assets/image/1.jpg",
        lastmaseg: "هههههه خلص وعد ما رح انساها ها المرة",
        maseges: [
          Masegs(
              personName: "Jaudat ",
              Timedate: "3:12",
              Textmaseg: "ولا قوم فيق وجبلي معك محرمة ",
              id: true),
          Masegs(
              personName: "Osama_gh",
              Timedate: "3:12",
              Textmaseg: "يلا جاية جاية ما بتترك الواحد ينام ساعة",
              id: false),
          Masegs(
              personName: "Jaudat ",
              Timedate: "3:12",
              Textmaseg: "خرا عليك الك تلات سعات نايم ",
              id: true),
          Masegs(
              personName: "Osama_gh",
              Timedate: "3:12",
              Textmaseg: "يلا نازززززل",
              id: false),
          Masegs(
              personName: "Jaudat ",
              Timedate: "4:00",
              Textmaseg: "لك وينك لك عرصا أساس نازل",
              id: true),
          Masegs(
              personName: "Osama_gh",
              Timedate: "4:11",
              Textmaseg: "رجعت غفلة يلا نزلة",
              id: false),
          Masegs(
              personName: "Jaudat ",
              Timedate: "4:12",
              Textmaseg: "معك عشر دقايق ازا ما كنت هون طالع جيبك",
              id: true),
          Masegs(
              personName: "Osama_gh",
              Timedate: "4:13",
              Textmaseg: "يلا جيتك جيتك ",
              id: false),
          Masegs(
              personName: "Jaudat ",
              Timedate: "4:13",
              Textmaseg: "جبلي معك محرمة ",
              id: true),
          Masegs(
              personName: "Osama_gh",
              Timedate: "4:15",
              Textmaseg: "هههههه خلص وعد ما رح انساها ها المرة ",
              id: false),
        ]),
    Chat(
        personName: "BeeG Boos",
        lastSeen: "11:45",
        is_online: true,
        is_Typing: true,
        userimage: "assets/image/2.jpg",
        lastmaseg: "ماشاءالله طيب بعتلي السيفي تبعو مع أسمو بالجنبي",
        maseges: [
          Masegs(
              personName: "BeeG Boos",
              Timedate: "5:54",
              Textmaseg: "شلونك أسوم ",
              id: true),
          Masegs(
              personName: "Osama_gh",
              Timedate: "5:54",
              Textmaseg: "عراسي عمي الحمدلله ",
              id: false),
          Masegs(
              personName: "Osama_gh",
              Timedate: "5:54",
              Textmaseg: "أنتا شلونك طمني عنك شلون شغلك ",
              id: false),
          Masegs(
              personName: "BeeG Boos",
              Timedate: "5:54",
              Textmaseg: "الحمدلله مفضلا ربك ",
              id: true),
          Masegs(
              personName: "Osama_gh",
              Timedate: "5:54",
              Textmaseg: "الله يقويك ويرزقك",
              id: false),
          Masegs(
              personName: "BeeG Boos",
              Timedate: "5:54",
              Textmaseg: "أسوم أنا ما قلتلك المسا بدن يكون عندي سيفيات",
              id: true),
          Masegs(
              personName: "Osama_gh",
              Timedate: "5:54",
              Textmaseg: "طيب ما حدا عامل سيفي هي ازا عنا سيفي ",
              id: false),
          Masegs(
              personName: "BeeG Boos",
              Timedate: "5:54",
              Textmaseg: "ولا حدا عندو سيفي؟",
              id: true),
          Masegs(
              personName: "Osama_gh",
              Timedate: "5:54",
              Textmaseg: "مبلا في عادل عندو سيفي قوي وشاغل مع شركات",
              id: false),
          Masegs(
              personName: "BeeG Boos",
              Timedate: "5:54",
              Textmaseg: "ماشاءالله طيب بعتلي السيفي تبعو مع أسمو بالأجنبي",
              id: true),
        ])
  ];

  @override
  Widget build(BuildContext context) {
    // bool isDarkMode = false;

    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: ColorsManager.typing,
            onPressed: () {},
            child: const Icon(Icons.chat_bubble)),
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "CHATS",
                        style: TextStyle(
                            fontSize: 18, color: ColorsManager.typing),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: CircleAvatar(
                          radius: 6,
                          backgroundColor: ColorsManager.typing,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "STATUS",
                          style: TextStyle(
                              fontSize: 18, color: ColorsManager.typing),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: CircleAvatar(
                            radius: 6,
                            backgroundColor: ColorsManager.typing,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          title: Text(
            "HiHI",
            style: TextStyle(fontSize: 30, color: ColorsManager.typing),
          ),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: ColorsManager.typing,
                )),
            PopupMenuButton<String>(
              color: ColorsManager.typing,
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'option1',
                    child: Container(
                      width: 140,
                      child: Text(
                        'Light Mode',
                        style: TextStyle(
                            fontSize: 18, color: ColorsManager.cirqel),
                      ),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'option2',
                    child: Text(
                      'New Chat',
                      style:
                          TextStyle(fontSize: 18, color: ColorsManager.cirqel),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'option2',
                    child: Text(
                      'New group',
                      style:
                          TextStyle(fontSize: 18, color: ColorsManager.cirqel),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'option3',
                    child: Text(
                      'setting',
                      style:
                          TextStyle(fontSize: 18, color: ColorsManager.cirqel),
                    ),
                  ),
                ];
              },
              onSelected: (String value) {
                // يتم وضع الأكواد التي تريد تنفيذها عند اختيار الخيار هنا
                if (value == 'option1') {
                  // يتم فتح الكونتينر وعرض الأزرار هنا
                }
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Divider(
              thickness: 2,
              color: ColorsManager.typing,
              indent: 20,
              endIndent: 20,
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: chats.length,
              itemBuilder: (BuildContext context, index) {
                Chat chat = chats[index];
                return chatComponnt(chat: chat);
              },
            )
          ],
        ));
  }
}
