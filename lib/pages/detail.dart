import 'package:comic_pssi/constants/theme.dart';
import 'package:comic_pssi/model/comic.dart';
import 'package:flutter/material.dart';

class DetailComic extends StatelessWidget {
  const DetailComic({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Detail Comic',
                style: whiteTextStyle, textAlign: TextAlign.center),
            IconButton(
              color: whiteColor,
              icon: const Icon(Icons.edit),
              onPressed: () {
                Navigator.pushNamed(context, '/edit');
              },
            ),
          ],
        ),
        backgroundColor: redColor,
      ),
      backgroundColor: bgColor,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Column(
              children: [
                GridTile(
                    child: Column(children: <Widget>[
                  Image.network(
                      "https://source.unsplash.com/1600x900/?soccer-tackle",
                      fit: BoxFit.cover,
                      width: 500,
                      height: 200),
                  Container(
                    color: redColor.withOpacity(0.9),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Teknik Dasar Tackle yang Benar",
                          style: whiteTextStyle.copyWith(fontSize: 18)),
                    ),
                  )
                ])),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Midfielder & Defender",
                          style: blackTextStyle.copyWith(fontSize: 14)),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rating : 4.5",
                          style: blackTextStyle.copyWith(fontSize: 12)),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "Teknik ini merupakan cara untuk menghentikan \nlawan yang sedang berlari dengan cara menghentikan bola",
                          style: TextStyle(fontSize: 14)),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                        child: Text('All Episode',
                            style: blackTextStyle.copyWith(fontSize: 18)),
                      ),
                      episodeItem1(),
                      episodeItem2(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(bottom: 20, right: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/create');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: orangeColor,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 30.0),
                ),
              )),
        ],
      ),
    );
  }

  Widget episodeItem1() {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.only(bottom: 10, right: 15, left: 15),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              margin: EdgeInsets.only(right: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    "https://source.unsplash.com/1600x900/?soccer-tackle",
                    fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "1. Melatih kaki kanan",
                    style: blackTextStyle.copyWith(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.star, size: 12, color: Colors.orange),
                      Text(" 4.5", style: greyTextStyle.copyWith(fontSize: 10)),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    "10 Januari 2023",
                    style: greyTextStyle.copyWith(fontSize: 10),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: redBtnColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: IconButton(
                color: whiteColor,
                iconSize: 18,
                icon: const Icon(Icons.delete),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget episodeItem2() {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.only(bottom: 10, right: 15, left: 15),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              margin: EdgeInsets.only(right: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    "https://source.unsplash.com/1600x900/?soccer-ball",
                    fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "2. Melatih Metabolisme Tubuh",
                    style: blackTextStyle.copyWith(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.star, size: 12, color: Colors.orange),
                      Text(" 4.5", style: greyTextStyle.copyWith(fontSize: 10)),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    "11 Januari 2023",
                    style: greyTextStyle.copyWith(fontSize: 10),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: redBtnColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: IconButton(
                color: whiteColor,
                iconSize: 18,
                icon: const Icon(Icons.delete),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
