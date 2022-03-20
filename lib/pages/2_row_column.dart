import 'package:flutter/material.dart';
import 'package:mynote1/pages/1_text_widget.dart';

import '3_container.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" 2. Widget Row & Column"),
        // menghilangkan undo di appbar
        automaticallyImplyLeading: false,
      ),
      // Jadi Widget Column ini akan mengatur widgetnya secara kebawah atau secara vertikal
      body: Column(
        // mainAxis : berfungsi mengatur layout secara vertikal
        // disini kita juga memberi alignment
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Widget ke 1 di dalam column
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(color: Colors.red),
          ),
          const SizedBox(
            height: 30,
          ),
          // Widget ke 2 di dalam column
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(color: Colors.green),
          ),
          const SizedBox(
            height: 30,
          ),
          // Widget ke 3 di dalam column
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(color: Colors.blue),
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            // Widget Row berfungsi mengatur layout secara horizontal atau kesamping
            // di row kita juga bisa mengatur aligment
            // mainAxis : berfungsi mengatur layout secara horizontal
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Widget ke 1 di dalam row
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(color: Colors.green),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(color: Colors.blue),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(color: Colors.red),
              ),
            ],
          ),
          // ABAIKAN KODINGAN DIBAWAH INI
          const SizedBox(
            height: 60,
          ),
          Row(
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
                        builder: (context) => const TextWidget(),
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
                        builder: (contex) => const container(),
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Text("Next"),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
