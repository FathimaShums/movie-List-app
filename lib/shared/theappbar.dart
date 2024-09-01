import 'package:flutter/material.dart';
//not using this for now

class theappbar extends StatelessWidget {
  const theappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Home Page"),
      flexibleSpace: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  print('favourite icon pressed');
                },
                icon: Icon(Icons.favorite))
          ],
        ),
      ),
    );
  }
}
