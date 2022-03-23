import 'package:flutter/material.dart';
import 'package:mynote1/pages/10_stack_align.dart';
import 'package:mynote1/pages/8_animated_container.dart';

class flexibleLayout extends StatelessWidget {
  const flexibleLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(" 9 . Flexible Widget"),
      ),
      body: Column(
        children: [
          // Flexible Widget
          // Relative dengan di semua device
          // Flexible(
          //   flex: 1,
          //   child: Container(
          //     decoration: BoxDecoration(color: Colors.red),
          //   ),
          // ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.red),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.yellow),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.purple),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(color: Colors.green),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(color: Colors.orange),
            ),
          ),
          // ===================================
          // ABAIKAN KODINGAN INI
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
                        builder: (context) => const AnimatContainer(),
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
                        builder: (contex) => const StackAlignWidget(),
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
