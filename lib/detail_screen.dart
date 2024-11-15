import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/kebun-pakbudi.jpeg'),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                'Kebun Pak Budi',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: [
                      Icon(Icons.calendar_today),
                      Text(
                        'Open Everyday',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.access_time),
                      Text(
                        '09:00 - 20:00',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.monetization_on),
                      Text(
                        'Rp. 25.000',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 3.0),
              padding: const EdgeInsets.all(18.0),
              child: const Text(
                'Sedang mencari tempat wisata yang seru dan lengkap untuk keluarga? Ayo, kunjungi Wisata Edukasi & Resort Kebun Pak Budi! Tempat ini menawarkan beragam wahana dan fasilitas untuk anak-anak dan dewasa, mulai dari kolam renang yang menyegarkan hingga area kelinci yang menggemaskan. Nikmati udara sejuk dan segar yang menyelimuti kawasan ini, membuat harimu semakin sempurna. Baik untuk bersantai, menjelajah, atau sekadar bersenang-senang, Kebun Pak Budi adalah tempat ideal untuk hari keluarga yang tak terlupakan!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('images/1.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('images/2.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('images/3.jpg'),
                    ),
                  ),
                ],
              ),
            ),
          ]),
    ));
  }
}
