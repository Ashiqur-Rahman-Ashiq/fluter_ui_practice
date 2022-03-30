import 'package:flutter/material.dart';


class CatagoryItems extends StatelessWidget {
  const CatagoryItems({Key? key,required this.text}) : super(key: key);
  final text;
  @override
  Widget build(BuildContext context) {
    return Text("$text",style: TextStyle(fontSize: 15),);
  }
}