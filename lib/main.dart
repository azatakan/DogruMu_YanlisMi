import 'package:flutter/material.dart';
import 'package:ornek_proje/constans.dart';
import 'test_veri.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BilgiTesti());
}

class BilgiTesti extends StatelessWidget {
  const BilgiTesti({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: SoruSayfasi(),
          ),
        ),
      ),
    );
  }
}

class SoruSayfasi extends StatefulWidget {
  const SoruSayfasi({super.key});

  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> secimler = [];
  TestVeri test_1 = TestVeri();

  void butonFonksiyonu(bool secilenSonuc) {
    if (test_1.testBittiMi() == true) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "       Tebrikler...\nTesti Bitirdiniz !!!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.green),
            ),
            actions: <Widget>[
              TextButton(
                child: Text(
                  "Başa Dön",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.of(context).pop();

                  setState(() {
                    test_1.testiSifirla();
                    secimler = [];
                  });
                },
              ),
            ],
          );
        },
      );
    } else {
      setState(() {
        test_1.getSoruYaniti() == secilenSonuc
            ? secimler.add(kDogruiconu)
            : secimler.add(kYanlisiconu);
        test_1.sonrakiSoru();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test_1.getSoruMetni(),
                textAlign: TextAlign.center,
                style: GoogleFonts.caveat(
                    fontSize: 65.0,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Wrap(
          spacing: 3,
          runSpacing: 3,
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(12.0),
                          backgroundColor: Colors.red[400],
                        ),
                        child: Icon(
                          Icons.thumb_down,
                          size: 30.0,
                        ),
                        onPressed: () {
                          butonFonksiyonu(false);
                        }),
                  ),
                ),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(12.0),
                              backgroundColor: Colors.green[400],
                            ),
                            child: Icon(
                              Icons.thumb_up,
                              size: 30.0,
                            ),
                            onPressed: () {
                              butonFonksiyonu(true);
                            }))),
              ])),
        )
      ],
    );
  }
}
