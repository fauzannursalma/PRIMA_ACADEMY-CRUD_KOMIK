import 'package:comic_pssi/widgets/comic_item.dart';
import 'package:flutter/material.dart';
import '../constants/theme.dart';
import '../model/comic.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final comicList = Comic.comicList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      backgroundColor: bgColor,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                categoryButton(),
                searchBox(),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15, bottom: 10, left: 10),
                        child: Text('All Comics',
                            style: blackTextStyle.copyWith(fontSize: 20)),
                      ),
                      for (Comic comic in comicList)
                        ComicItem(
                          comic: comic,
                          onDeleteItem: _deleteComicItem,
                        )
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
                    child: Icon(Icons.add, color: whiteColor, size: 40)),
              )),
        ],
      ),
    );
  }

  void _deleteComicItem(String id) {
    setState(() {
      comicList.removeWhere((item) => item.id == id);
    });
  }

  AppBar _appBar() {
    return AppBar(
        backgroundColor: redColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo_prima_white.png',
              fit: BoxFit.contain,
              height: 110,
            ),
            Container(
                padding: const EdgeInsets.all(2.0),
                child: Text('/ Comics',
                    style: whiteTextStyle.copyWith(fontSize: 14)))
          ],
        ));
    // title: Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    //     Icon(Icons.menu, color: whiteColor),
    //     Text('PSSI-Comic',
    //         style: whiteTextStyle, textAlign: TextAlign.center),
    //     Icon(Icons.person, color: whiteColor),
    //   ],
    // ));
  }

  Widget categoryButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(children: [
        Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: orangeColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: whiteColor,
            iconSize: 20,
            icon: const Icon(Icons.category),
            onPressed: () {},
          ),
        ),
        SizedBox(width: 10),
        Text("Category", style: blackTextStyle.copyWith(fontSize: 15)),
        Spacer(),
        Icon(Icons.arrow_forward_ios, color: blackColor, size: 15),
      ]),
    );
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search, color: greyColor, size: 20),
          prefixIconConstraints: BoxConstraints(
            minWidth: 20,
            maxHeight: 20,
          ),
          hintText: 'Search',
        ),
      ),
    );
  }
}
