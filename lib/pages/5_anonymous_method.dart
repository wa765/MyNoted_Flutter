import 'package:flutter/material.dart';

class AnonymousMethod extends StatefulWidget {
  const AnonymousMethod({Key? key}) : super(key: key);

  @override
  State<AnonymousMethod> createState() => _AnonymousMethodState();
}

class _AnonymousMethodState extends State<AnonymousMethod> {
  // Field
  String? message = "Ini adalah teks";

  // Method biasa tidak anonymous
  // String tombolDiTekan() {
  //   setState(() {
  //     message = "Tombol Sudah ditekan";
  //   });
  //   return message!;
  // }

// Untuk Anonymous method itu penulisannya seperti ini : method tidak punya nama
//  () {
//   setState(() {
//   message = "Tombol Sudah ditekan";
//      });
//         },
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(" 5 . Anonymous Method"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message!),
            ElevatedButton(
              // Anonymous Method
              onPressed: () {
                setState(() {
                  message = "Tombol Sudah ditekan";
                });
              },
              child: Text("Tekan Saya"),
            ),
          ],
        ),
      ),
    );
  }
}
