import 'package:flutter/material.dart';
import 'package:weekten/models/Movies.dart';
import 'package:weekten/shared/favmoviecard.dart';
import 'package:weekten/shared/moviecard.dart';

class theFavorites extends StatefulWidget {
  const theFavorites({super.key});

  @override
  State<theFavorites> createState() => _theFavoritesState();
}

class _theFavoritesState extends State<theFavorites> {
  // // List<Movies> theMovieList = [];
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();

  // }

  @override
  Widget build(BuildContext context) {
    final movie_list =
        ModalRoute.of(context)?.settings.arguments as List<Movies>?;

    return Scaffold(
        body: ListView.builder(
            itemCount: movie_list?.length,
            itemBuilder: (context, index) {
              return favmoviecard(favMovie: movie_list![index]);
            }));
  }
}
