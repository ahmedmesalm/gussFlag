import 'package:flutter/material.dart';

class flagbutton extends StatelessWidget {
  final String name;
  final Function() onPressed ;
  const flagbutton({super.key,required this.name, required this.onPressed,});
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed:onPressed,
      child: Image.asset("assets/countries/$name.png",
        height: 130,
      ),
    );
  }
}