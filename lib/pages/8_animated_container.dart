import 'dart:math';
import 'package:flutter/material.dart';

class AnimatContainer extends StatefulWidget {
  const AnimatContainer({Key? key}) : super(key: key);

  @override
  State<AnimatContainer> createState() => _AnimatContainerState();
}

class _AnimatContainerState extends State<AnimatContainer> {
  // field
  Random randomContainer = Random();
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(" 8 . Animated Container"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // misalnya ada container saat diklik itu berubah warna dengan random
            // misalnya mau buat bisa diklik tapi tanpa onpressed bisa menggunakan Gesture Detector
            GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: AnimatedContainer(
                color: Color.fromARGB(
                  255,
                  randomContainer.nextInt(256),
                  randomContainer.nextInt(256),
                  randomContainer.nextInt(256),
                ),
                // durasi 5 detik
                duration: Duration(seconds: 1),
                // lebar == random
                // method next.Int = mengenerate angka secara exlusive (tidak termasuk exlusivenya)
                // misall generate angka 5 mangka angka tidak termasuk
                // disini misalnya dimulai dari angka 50 dan max 150
                width: 50.0 + randomContainer.nextInt(101),
                height: 50.0 + randomContainer.nextInt(101),
              ),
            )
          ],
        ),
      ),
    );
  }
}
