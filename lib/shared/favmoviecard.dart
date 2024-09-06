import 'package:flutter/material.dart';
import 'package:weekten/models/Movies.dart';

class favmoviecard extends StatelessWidget {
  const favmoviecard({super.key, required this.favMovie});
  final Movies favMovie;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Image(
            image: NetworkImage(favMovie.image),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              favMovie.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(favMovie.description),
          ],
        )
      ],
    );
  }
}
