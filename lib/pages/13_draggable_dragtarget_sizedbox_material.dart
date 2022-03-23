import 'package:flutter/material.dart';

class WidgetDrag extends StatefulWidget {
  const WidgetDrag({Key? key}) : super(key: key);

  @override
  State<WidgetDrag> createState() => _WidgetDragState();
}

class _WidgetDragState extends State<WidgetDrag> {
  // field untuk warna
  Color color1 = Colors.red;
  Color color2 = Colors.green;
  Color? targetColor;
  //
  // jadi ini untuk mengetahui apakah drag tadi sudah menerima warna atau belum
  bool isAccepted = false;
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(" 13 . Draggable , Dragtarget , Sizedbox , Material"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // sizedbox digunakan untuk membungkus widget yang didalamnya hanya ada width dan height
              // agar lingkarannya bisa di drag bungkus dengan properti draggable
              // Draggable butuh tipe data untuk dibawa
              Draggable<Color>(
                // childWhenDragging : widget yang akan digambar ketika widget di drag
                childWhenDragging: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color2,
                    shape: StadiumBorder(),
                  ),
                ),
                // data yang akan dibawah data 1 warna merah
                data: color1,
                // feedback : bentuk lingkaran ketika di drag
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  // Shape di Widget Material untuk membuat lengkuran border
                  // Elevation untuk memberi Efek Shadow
                  child: Material(
                    color: color1.withOpacity(0.5),
                    shape: StadiumBorder(),
                    elevation: 20,
                  ),
                ),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  // Shape di Widget Material untuk membuat lengkuran border
                  // Elevation untuk memberi Efek Shadow
                  child: Material(
                    color: color1,
                    shape: StadiumBorder(),
                    elevation: 20,
                  ),
                ),
              )
            ],
          ),
          // DragTarget : Tempat untuk di ngedragnya
          // onAccept : Fungsi yang dilakukan ketika menerima data tersebut
          DragTarget<Color>(
            // builder : method yang akan dipakai untuk membuat widget drag target ini
            builder: (context, candidates, rejected) {
              // jika sudah menerima warna akan membuat lingkaran lebih besar
              return (isAccepted)
                  ? SizedBox(
                      width: 100,
                      height: 50,
                      child: Material(
                        color: targetColor,
                        shape: StadiumBorder(),
                        elevation: 20,
                      ),
                      // jika is acceptednya masih false akan warnanya akan menjadi abu
                    )
                  : SizedBox(
                      width: 100,
                      height: 50,
                      child: Material(
                        color: Colors.black26,
                        shape: StadiumBorder(),
                        elevation: 20,
                      ),
                    );
            },
            onWillAccept: (value) => true,
            // jika sudah menerima warna (true)
            // targetColornya akan berubah warna menjadi valuenya
            onAccept: (value) {
              isAccepted = true;
              targetColor = value;
            },
          )
        ],
      ),
    );
  }
}
