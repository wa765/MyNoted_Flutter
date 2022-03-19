import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ini Widget Text"),
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
          ],
        ),
      ),
    );
  }
}
