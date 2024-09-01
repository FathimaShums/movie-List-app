import 'package:flutter/material.dart';
import 'package:weekten/models/Movies.dart';
import 'package:weekten/shared/moviecard.dart';

class theLandingPage extends StatefulWidget {
  const theLandingPage({super.key});

  @override
  State<theLandingPage> createState() => _theLandingPageState();
}

class _theLandingPageState extends State<theLandingPage> {
  List<Movies> theMovieList = [];

  final List<Movies> MovieList = [
    Movies("Secret Life Of Pets", "Movie about a bunnch of fictional pets",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcLhJZfKMziE5if_GMu-SiF09pSq8XY3KT_g&s")
  ];

  VoidCallback AddtotheList(
    Movies afavMovie,
  ) {
    return () {
      setState(() {
        Movies aMovie =
            Movies(afavMovie.title, afavMovie.description, afavMovie.image);
        theMovieList.add(aMovie); // Action to perform
      });
    };
  }

  void NavigateToViewAllScreen() {
    Navigator.pushNamed(context, '/favorites', arguments: theMovieList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          flexibleSpace: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      print('favourite icon pressed');
                      NavigateToViewAllScreen();
                    },
                    icon: Icon(Icons.favorite))
              ],
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: MovieList.length,
            itemBuilder: (context, index) {
              return moviecard(
                  theMovie: MovieList[index],
                  onPressed: AddtotheList(MovieList[index]));
            }));
  }
}
