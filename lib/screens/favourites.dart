import 'package:flutter/material.dart';

class theFavorites extends StatefulWidget {
  const theFavorites({super.key});

  @override
  State<theFavorites> createState() => _theFavoritesState();
}

class _theFavoritesState extends State<theFavorites> {
  @override
  Widget build(BuildContext context) {
    final movie_list = ModalRoute.of(context)!.settings.arguments as List;
    return Scaffold(
        body: ListView.builder(
            itemCount: movie_list.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(movie_list[index].title),
              );
            }));
  }
}
