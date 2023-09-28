
import 'classmaseg.dart';

class Chat {
   String personName;
   String lastSeen;
   bool is_online;
   bool is_Typing;
   String userimage;
   String lastmaseg ;
   List<Masegs>maseges;

  Chat(    {
      required this.personName,
      required this.lastSeen,
      required this.is_online,
      required this.is_Typing,
      required this.userimage,
      required this.lastmaseg,
      required this.maseges,

  });
}
