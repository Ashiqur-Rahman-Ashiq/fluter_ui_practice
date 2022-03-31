import 'package:flutter/material.dart';

class productDetail extends StatefulWidget {
  const productDetail({Key? key}) : super(key: key);

  @override
  _productDetailState createState() => _productDetailState();
}

class _productDetailState extends State<productDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Center(child: Text("LS2 Strome Racer",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),
            SizedBox(
              height: 40,
            ),
            Image(image: AssetImage("images/helmates/img2.png"),height: 250,),
            SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Choose the color",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                ColorChoise(Clr: Colors.green),
                ColorChoise(Clr: Colors.orange),
                ColorChoise(Clr: Colors.teal),
                ColorChoise(Clr: Colors.pink),

              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Choose the Size",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
            SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              height: 60,
              width: 55,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black),
              ),
              child: Text("S",style: TextStyle(fontSize:25,),),
            )

          ],
        ),
      ),
    );
  }
}



class ColorChoise extends StatelessWidget {
  const ColorChoise({Key? key,required this.Clr}) : super(key: key);
  final Clr;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 60,
      decoration: BoxDecoration(
        color: Clr,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
