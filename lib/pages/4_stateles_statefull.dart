import 'package:flutter/material.dart';
import 'package:mynote1/pages/5_anonymous_method.dart';

import '3_container.dart';

// Ini statefull Widget
class widgetState extends StatefulWidget {
  const widgetState({Key? key}) : super(key: key);

  @override
  State<widgetState> createState() => _widgetStateState();
}

class _widgetStateState extends State<widgetState> {
  // field
  int number = 0;
  // pembuatan methodnya disini
  void tekanTombol() {
    // perintah untuk merubah UI saat melakukan aksi
    setState(
      () {
        number = number + 1;
      },
    );
  }

  // method mengurangi
  void tekanTombolKurang() {
    // perintah untuk merubah UI saat melakukan aksi
    setState(() {
      number -= 1;
      // jika kurang dari 0 dia tidak bisa
      if (number < 0) {
        number = 0;
      }
    });
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(" 4 . Widget Statefull "),
      ),
      // Jadi Flutter itu mempunyai state yaitu Stateles Widget & Statefull Widget
      // Apa itu Stateles Widget : Stateles Widget adalah state yang bersifat dinamis atau Interfacenya itu tidak bisa berubah saat diklik
      // ===================
      // Sedangkan apa itu Statefull Widget ?
      // Statefull widget : State yang memiliki status atau keadaan , misalnya saat melakukan klik button dan Interface tersebut berubah nahh itu yang dinamakan Statefull
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              // ini akan dicetak
              number.toString(),
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            ElevatedButton(
              // Event handler
              // ini method
              onPressed: tekanTombol,
              child: Text("Tambah Angka"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.amber),
              onPressed: tekanTombolKurang,
              child: Text("Kurangi Angka"),
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
                          builder: (context) => const container(),
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
                          builder: (contex) => const AnonymousMethod(),
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
      ),
    );
  }
}
