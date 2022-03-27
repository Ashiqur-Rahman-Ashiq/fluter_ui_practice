import 'package:flutter/material.dart';


class cameraShop extends StatefulWidget {
  const cameraShop({Key? key}) : super(key: key);

  @override
  State<cameraShop> createState() => _cameraShopState();
}

class _cameraShopState extends State<cameraShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'images/camera_ui/logo.png',
            fit: BoxFit.contain,
            scale: 1,
            alignment: FractionalOffset.center,
            height: 30,
            width: 300,
          ),
          backgroundColor: Colors.white,
          elevation: 1,
          leading: IconButton(
            icon: Icon(
              Icons.menu_rounded,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.search_rounded,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: Container(
                  height: 250,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "10% Discunt",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "Grabs your one today ",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 50, 0, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Explore",
                            style:
                            TextStyle(color: Colors.black54, fontSize: 15),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(250, 50, 10, 120),
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(30 / 360),
                  child: Image.asset(
                    'images/camera_ui/cam1.png',
                    height: 100,
                    width: 80,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
