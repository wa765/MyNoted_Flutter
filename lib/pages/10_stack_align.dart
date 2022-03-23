import 'package:flutter/material.dart';
import 'package:mynote1/pages/11_image_widget.dart';
import 'package:mynote1/pages/9_flexible_widget.dart';

class StackAlignWidget extends StatelessWidget {
  const StackAlignWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(" 10 . Stack & Align Widget"),
      ),
      // Column : menyusun widget secara kebawah
      // Row : menyusun widget secara kesamping
      // Stack : menyusun widget secara ditumpuk atau saling tindih
      body: Stack(
        children: [
          Column(
            children: [
              Flexible(
                // kenapa satu ? karena maunya nanti 1 layar memenuhi
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
              Flexible(
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.amber,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.purple,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: const Text(
                      "Ini adalah text yang ada di lapisan tengah dari stack",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: const Text(
                      "Ini adalah text yang ada di lapisan tengah dari stack",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: const Text(
                      "Ini adalah text yang ada di lapisan tengah dari stack",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: const Text(
                      "Ini adalah text yang ada di lapisan tengah dari stack",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
          // ini posisi buttonnya akan di atas kiri layar (fixed)
          // agar bisa sesuai keiginan posisinya bisa pke properti alignment
          Align(
            // misalnya posisinya mau di costumize bisa gunain ini
            // x == mendatar
            // y == keatas
            alignment: Alignment(0.9, 0.03),
            // alignment: Alignment.topCenter,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              onPressed: () {},
              child: Text("Pencet Aku"),
            ),
          ),
          // ===================================
          // ABAIKAN KODINGAN INI
          const SizedBox(
            height: 60,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const flexibleLayout(),
                        ),
                      );
                    },
                    child: Text("Back"),
                  ),
                ),
                Container(
                  width: 100,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      final snackBar = SnackBar(
                        content: Text("Loadinggg..."),
                        backgroundColor: Colors.blue,
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (contex) => const ImageWidget(),
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Text("Next"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
