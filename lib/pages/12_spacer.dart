import 'package:flutter/material.dart';
import 'package:mynote1/pages/11_image_widget.dart';

class WidgetSpacer extends StatelessWidget {
  const WidgetSpacer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(" 12 . Spacer Widget "),
      ),
      body: Column(
        children: [
          // No with Spacer
          // dengan Space Between jaraknya kiri kanannya akan sama
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.purple,
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          // Widget Spacer itu kurang lebih sama dengan properti MainAxisSpaceBetween tapi istimewanya Spacer bisa mengatur jarak sesuai dengan keiginan
          // dengan Space Between jaraknya kiri kanannya akan sama
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              // tanpa diisi ini akan menghasilkan seperti space between
              const Spacer(),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              // jika diisi ini akan menghasilkan space atau jarak sesuai keinginan
              const Spacer(flex: 3),
              Container(
                height: 100,
                width: 100,
                color: Colors.purple,
              ),
            ],
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
                        builder: (context) => const ImageWidget(),
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
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (contex) => const StackAlignWidget(),
                    //   ),
                    // );
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
