import 'package:first_day_flutter/doctorprofile.dart';
import 'package:flutter/material.dart';
import 'package:drop_down_list/drop_down_list.dart';
class Pat extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return PatState ();

  }
}

class  PatState extends State<Pat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text(" Patient Profile         ", style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black))),
          backgroundColor: Colors.white,
          leading: TextButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DocProf()),
            );
          },
              child: Text("Back",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),)),
        ),
        body: Text("حُسن الظن باللَّه مش بس إن حاجة معيَّنة أبقىٰ عايزها؛ تحصل،"
            " دا مفهوم ضيَّق جدَّاً، حُسن الظن إن حتَّىٰ لو الدنيا مشيت في سكة غير إللي أنا عايزها"
            "؛ يبقىٰ عندي حسن ظن إن ترتيب ربنا هو عين الخير ليَّا، مش إللي أنا عايزه بس هو الخير! إنت مش عندك حُسن ظن إن ربنا هيوديك للخير؟ خلاص سواء الخير دا إللي إنت عايزه أو لا؛ فـ هو هيكتبلك أحسن الأقدار، حُسن الظن باكدچ متكاملة إنِّي واثق أنه لن يضيعني اللَّه، مش أول ما الحاجة تروح أظن إنِّي ضعْت خلاص! حُسن الظن أسلوب حياة، مش موقف عابر",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
    );

  }}