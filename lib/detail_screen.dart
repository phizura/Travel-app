import 'package:flutter/material.dart';
import 'package:travel_app/model/tourism_place.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ));
  }
}

class DetailScreen extends StatelessWidget {
  final TourismPlace place;
  const DetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: [
                Image.asset(place.imageAsset),
                SafeArea(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: IconButton(
                                  onPressed: () => Navigator.pop(context),
                                  icon: const Icon(Icons.arrow_back),
                                  color: Colors.white,
                                )),
                            const FavoriteButton()
                          ],
                        )))
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: [
                      const Icon(Icons.calendar_today),
                      Text(
                        place.openDays,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(Icons.access_time),
                      Text(
                        place.openTime,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(Icons.monetization_on),
                      Text(
                        place.ticketPrice,
                        style: const TextStyle(
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
              child: Text(
                place.description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: place.imageUrls.map((url) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(url),
                      ),
                    );
                  }).toList()
                  //
                  ),
            ),
          ]),
    ));
  }
}
