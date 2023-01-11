import 'package:comic_pssi/constants/theme.dart';
import '../model/comic.dart';
import 'package:flutter/material.dart';

class ComicItem extends StatelessWidget {
  final Comic comic;
  final onDeleteItem;
  const ComicItem({Key? key, required this.comic, required this.onDeleteItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/detail', arguments: comic);
      },
      child: Container(
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            Container(
              width: 110,
              height: 100,
              margin: EdgeInsets.only(right: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(comic.cover!, fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    comic.title!,
                    style: blackTextStyle.copyWith(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.star, size: 12, color: Colors.orange),
                      Text(" ${comic.rating}",
                          style: greyTextStyle.copyWith(fontSize: 10)),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    comic.category!,
                    style: greyTextStyle.copyWith(fontSize: 10),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    comic.createdAt!,
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
                onPressed: () {
                  onDeleteItem(comic.id);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
