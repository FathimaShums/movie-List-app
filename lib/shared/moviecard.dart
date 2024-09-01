import 'package:flutter/material.dart';
import 'package:weekten/models/Movies.dart';

class moviecard extends StatelessWidget {
  const moviecard({super.key, required this.onPressed, required this.theMovie});
  final Movies theMovie;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Image(
            image: NetworkImage(theMovie.image),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(theMovie.title),
            Text(theMovie.description),
            ElevatedButton(
                onPressed: () {
                  Movies aMovie = Movies(
                      theMovie.title, theMovie.description, theMovie.image);
                },
                child: Text("Add to favourites"))
          ],
        )
      ],
    );
  }
}
