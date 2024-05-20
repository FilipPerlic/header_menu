import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Pets',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 103,
                        height: 34,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(67)),
                          color: Color.fromRGBO(237, 192, 151, 1),
                        ),
                      ),
                      Positioned(
                        right: 8,
                        top: 17,
                        // bottom: 17,
                        child: Container (
                          height: 16,
                          width: 19,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/arrow.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        )
                      ),
                      Positioned(
                          left: 43,
                          top: 12,
                          child: Text("Frida",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              )
                          )
                      ),
                      Positioned(
                        top: 8,
                        left: 8,
                        bottom: 8,
                        child: Container(
                          width: 34,
                          height: 34,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Image.asset(
                            "assets/dogphoto.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
