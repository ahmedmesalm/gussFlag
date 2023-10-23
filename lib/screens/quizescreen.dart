import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guessflag/screens/resultscreen.dart';
import '../widgets/flagbutton.dart';
import 'package:fluttertoast/fluttertoast.dart';
class QuizeScreen extends StatefulWidget {
   QuizeScreen({super.key});
  @override
  State<QuizeScreen> createState() => _QuizeScreenState();
}
class _QuizeScreenState extends State<QuizeScreen> {
  List<String> countries = [
    "Estonia",
    "France",
    "Germany",
    "Ireland",
    "Italy",
    "Monaco",
    "Nigeria",
    "Poland",
    "Russia",
    "Spain",
    "UK",
    "US",
  ];
  int num=Random().nextInt(3) ;
  int corretAnswer= 0 ;
  int wrongAnswer= 0 ;
  @override
  void initState() {
    super.initState();
    countries.shuffle() ;
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 16),
               const Text(
                "Guess The Flag?",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
               Text(
                countries[num],
                style: const TextStyle(
                  fontSize: 34,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 25),
              for(int i=0;i<3;i++)
              flagbutton( name:countries[i], onPressed: () {
                if(num == i){
                  Fluttertoast.showToast(msg: "Correct Answer",
                      backgroundColor: Colors.green) ;
                   corretAnswer ++ ;
                }else {
                  Fluttertoast.showToast(msg: "Wrong Answer",
                      backgroundColor: Colors.red) ;
                  wrongAnswer ++ ;
                }
                setState(() {
                  countries.shuffle() ;
                  num=Random().nextInt(3) ;
                });
              },),
              ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>
                        ResultScreen(corretAnswer: corretAnswer, wrongAnswer: wrongAnswer,)));
              },
                  child:const Text("Result",style:TextStyle(
                    fontSize: 22,) )),
              Spacer(flex: 1,)
            ],
          ),
        ),
      ),

    );
  }
}


