import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
   return  Scaffold(
      body:Stack(
        children: [
          Positioned(child: Image.asset("assets/images/main_top.png")
          ),

          Positioned(child: Image.asset("assets/images/main_bottom.png")),
        ],
      )
    );
  }
}