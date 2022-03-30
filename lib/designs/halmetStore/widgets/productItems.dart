import 'package:flutter/material.dart';


class ProductItems extends StatelessWidget {
  const ProductItems({Key? key,required this.img,required this.label,required this.price,}) : super(key: key);
  final img;
  final label;
  final price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black54,width: 1),
      ),
      child: Column(
        children: [
          SizedBox(height: 20,),
          Image(image: AssetImage(img),height: 130,),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("$label",style: TextStyle(fontSize: 19,color: Colors.black54,fontWeight: FontWeight.bold),),
              Text("$price",style: TextStyle(fontSize: 19,color: Colors.black54,fontWeight: FontWeight.bold),)
            ],
          )
        ],
      ),
    );
  }
}