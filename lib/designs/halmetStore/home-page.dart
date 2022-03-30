import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/designs/halmetStore/constans.dart';
import 'package:flutter_ui_practice/designs/halmetStore/widgets/catagory.dart';
import 'package:flutter_ui_practice/designs/halmetStore/widgets/productItems.dart';

class HomaPage extends StatefulWidget {
  const HomaPage({Key? key}) : super(key: key);

  @override
  _HomaPageState createState() => _HomaPageState();
}

class _HomaPageState extends State<HomaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 60),
            child: Row(
              children: [
                Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: "Moto",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent)),
                    TextSpan(
                        text: "Helmet",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: btncolor)),
                  ]),
                ),
              ],
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Let's find helmet",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black38,
                  ),
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: btncolor,
                      ),
                      child: Center(
                        child: Text(
                          "All",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CatagoryItems(
                      text: "Full Face",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CatagoryItems(
                      text: "Modular",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CatagoryItems(
                      text: "Dirt",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CatagoryItems(
                      text: "Gost",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProductItems(
                          img: "images/helmates/img1.png",
                          label: "Ls1",
                          price: "\$200"),
                      ProductItems(
                          img: "images/helmates/img2.png",
                          label: "Ls2",
                          price: "\$200"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProductItems(
                          img: "images/helmates/img3.png",
                          label: "Ls3",
                          price: "\$300"),
                      ProductItems(
                          img: "images/helmates/img4.png",
                          label: "Ls4",
                          price: "\$400"),
                    ],
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
