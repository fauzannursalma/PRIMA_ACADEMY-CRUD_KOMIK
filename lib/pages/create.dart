import 'dart:math';

import 'package:comic_pssi/constants/theme.dart';
import '../model/comic.dart';
import 'package:flutter/material.dart';

class CreateComic extends StatefulWidget {
  CreateComic({super.key});
  @override
  State<CreateComic> createState() => _CreateComicState();
}

class _CreateComicState extends State<CreateComic> {
  final comicList = Comic.comicList();
  final _titleComicController = TextEditingController();
  final _descComicController = TextEditingController();
  late var _categoryComicController = TextEditingController();
  final _dateComicController = DateTime.now().toString();
  final _coveredComicController = TextEditingController();
  final _rateComicController = Random().nextInt(10).toString();

  String title = 'Flutter Code Sample',
      description =
          'This sample shows how to create a custom widget that mixes '
          'the painting and layout systems.',
      category = 'Sports',
      createdAt = '12-11-2022';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: redColor,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Create Comic',
                    style: whiteTextStyle, textAlign: TextAlign.center),
                IconButton(
                  color: whiteColor,
                  icon: const Icon(Icons.save),
                  onPressed: () {
                    _addComic(
                        _titleComicController.text,
                        _categoryComicController.text,
                        _descComicController.text,
                        _dateComicController,
                        _coveredComicController.text,
                        _rateComicController);
                  },
                ),
              ],
            )),
        backgroundColor: bgColor,
        // ignore: prefer_const_constructors
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: whiteColor,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Title",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter Title";
                    }
                    return null;
                  },
                  onSaved: (value) => _categoryComicController =
                      value! as TextEditingController,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Category",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter Category";
                    }
                    return null;
                  },
                  onSaved: (value) => _categoryComicController =
                      value! as TextEditingController,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Description",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter Description";
                    }
                    return null;
                  },
                  onSaved: (value) => _categoryComicController =
                      value! as TextEditingController,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                margin: EdgeInsets.only(top: 15),
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.add_a_photo,
                        size: 30, color: Colors.orange),
                    Text("  Add Cover",
                        style: greyTextStyle.copyWith(fontSize: 15)),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                margin: EdgeInsets.only(top: 15),
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.bookmark, size: 30, color: Colors.orange),
                    Text("  Add Episode",
                        style: greyTextStyle.copyWith(fontSize: 15)),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                margin: EdgeInsets.only(top: 15),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: redBtnColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.save, size: 30, color: Colors.white),
                    Text("  Save",
                        style: whiteTextStyle.copyWith(fontSize: 15)),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  void _addComic(String title, String category, String description,
      String createdAt, String cover, String rate) {
    setState(() {
      comicList.add(Comic(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: title,
        category: category,
        description: description,
        createdAt: createdAt,
        cover: cover,
        rating: rate,
      ));
    });
  }
}
