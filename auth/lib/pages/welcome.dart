import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              // color: Colors.amber,
              child: Column(
                children: [
                   // ignore: prefer_const_constructors
                   SizedBox(
                    height: 22,
                  ),
                  // ignore: prefer_const_constructors
                  Text("welcome", style: TextStyle(fontSize: 33,fontFamily: "myfont"),),
                   // ignore: prefer_const_constructors
                   SizedBox(
                    height: 22,
                  ),
                  SvgPicture.asset("assets/icons/chat.svg",width:288),

                   // ignore: prefer_const_constructors
                   SizedBox(
                    height: 22,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },
              
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.purple),
                      padding: WidgetStateProperty.all(
                          // ignore: prefer_const_constructors
                          EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    // ignore: prefer_const_constructors
                    child: Text(
                      "login",
                      // ignore: prefer_const_constructors
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 22,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/signup");
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(Colors.purple[100]),
                      padding: WidgetStateProperty.all(
                          // ignore: prefer_const_constructors
                          EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                      // ignore: deprecated_member_use
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    child: Text(
                      "SIGNUP",
                      style: TextStyle(fontSize: 17, color: Colors.grey[850]),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                left: 0,
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: 111,
                )),
            Positioned(
                bottom: 0,
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: 90,
                )),
          ],
        ),
      )),
    );
  }
}
