import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mynote1/pages/6_list_view.dart';
import 'package:mynote1/pages/8_animated_container.dart';

class textStyle extends StatefulWidget {
  const textStyle({Key? key}) : super(key: key);

  @override
  State<textStyle> createState() => _textStyleState();
}

class _textStyleState extends State<textStyle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(" 7 . Text Style"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is Google Fonts',
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                    color: Colors.blue,
                    letterSpacing: .5,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red,
                    decorationThickness: 3,
                    decorationStyle: TextDecorationStyle.dashed),
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
                          builder: (context) => const widgetListView(),
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
                          builder: (contex) => const AnimatContainer(),
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
