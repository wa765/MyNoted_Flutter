import 'package:flutter/material.dart';
import 'package:mynote1/pages/10_stack_align.dart';
import 'package:mynote1/pages/12_spacer.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(" 11 . Image Widget"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              // ini akan menambah lebar si gambar jadi ada ruang sengga di sisi kanan dan kiri untuk mengatasinya bisa menggunakan properti fit di Image
              color: Colors.black,
              margin: const EdgeInsets.all(30),
              width: 400,
              height: 200,
              // Network Image jika assetnya dari internet
              // Asset Image jika assetnya dari local atau folder projek
              child: const Image(
                image: NetworkImage(
                    "https://pbs.twimg.com/profile_images/1415737091523186688/hEEEENvS_400x400.jpg"),
                // ini akan memenuhi ruang yang sengga tadi
                fit: BoxFit.fill,
                // repeat jika ingin gambar tampil banyak
                // repeat: ImageRepeat.repeat,
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
                          builder: (context) => const StackAlignWidget(),
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
                          builder: (contex) => const WidgetSpacer(),
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
