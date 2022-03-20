import 'package:flutter/material.dart';
import 'package:mynote1/pages/2_row_column.dart';
import 'package:mynote1/pages/4_stateles_statefull.dart';

import '1_text_widget.dart';

class container extends StatelessWidget {
  const container({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(" 3 . Widget Container"),
      ),
      body: Column(
        children: [
          Container(
            width: 500,
            height: 500,
            // Khusus untuk penggunaan margin dan padding harus dibungkus dengan Container baru bisa
            margin: const EdgeInsets.all(20),
            // padding untuk memberi jarak widget yang terdapat di dalam widget container
            // LTRB : Left Top Rigth Bottom
            padding: const EdgeInsets.fromLTRB(10, 5, 20, 10),
            color: Colors.red,
            //
            child: Container(
              decoration: BoxDecoration(
                // properti Border Radius untuk memberi lengkungan di pojok
                borderRadius: BorderRadius.circular(20),
                // untuk mengubah arah gradiasi bisa memakai properti Begin dan End
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.blue,
                    Colors.green,
                  ],
                ),
              ),
            ),
          ),
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
                        builder: (context) => const RowColumn(),
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
                        builder: (contex) => const widgetState(),
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
