import 'package:flutter/material.dart';
import 'package:mynote1/pages/2_row_column.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" 1 . Ini Widget Text"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.lightBlue,
              width: 150,
              height: 50,
              // max line akan menyesuaikan dengan barisnya misalnya max line 2 maka nanti outpuntnya 2 baris , text yang ketiga akan hilang
              child: Text(
                "Saya sedang melatih kemampuan flutter saya",
                maxLines: 2,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.lightBlue,
              width: 150,
              height: 50,
              // overflow akan memberika seperti petunjuk jika ada texs yang hilang , misalnya TextOverflow.Elipsis dia akan memberi text yang hilang tadi dengan titik titikk ....
              child: Text(
                "Saya sedang melatih kemampuan flutter saya",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.lightBlue,
              width: 150,
              height: 50,
              // soft wrap defaultnya bernilai true , misalnya diubah menjadi false , akan menghilangkan jika textnya lebih dari satu baris
              child: Text(
                "Saya sedang melatih kemampuan flutter saya",
                maxLines: 2,
                softWrap: false,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.lightBlue,
              width: 150,
              height: 50,
              // text align untuk mengatur jarak teks
              child: Text(
                "Saya sedang melatih kemampuan flutter saya",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.lightBlue,
              width: 150,
              height: 50,
              // style untuk mengatur gaya dari teks
              child: Text(
                "Saya sedang melatih kemampuan flutter saya",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.red,
                    fontStyle: FontStyle.italic),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            // Abaikan Kodingan dibawah ini
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.grey),
                    onPressed: () {},
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
                          builder: (contex) => const RowColumn(),
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Text("Next"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
