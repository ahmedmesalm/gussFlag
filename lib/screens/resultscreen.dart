import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  int corretAnswer ;
  int wrongAnswer ;
   ResultScreen({required this.corretAnswer , required this.wrongAnswer});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Result",style:TextStyle(fontSize: 25,color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Correct Answers: ${widget.corretAnswer} ",
              style: const TextStyle(
                fontSize: 24,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Wrong Answers: ${widget.wrongAnswer} ",
              style: const TextStyle(
                fontSize: 24,fontWeight:FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 200,),
            ElevatedButton(onPressed: Clear,
                child: Text("Restart",
              style:TextStyle(fontSize: 30) ,))
          ],
        ),
      ),
    );
  }
  void Clear(){
    if(widget.corretAnswer != 0 || widget.wrongAnswer !=0)
    { widget.corretAnswer  ;
      widget.wrongAnswer  = 0 ;
    }
   setState(() {});
  }
}
