import 'package:flutter/material.dart';
import 'package:instagram_clone/util/explore_grid.dart';

class UseSearch extends StatelessWidget {
  const UseSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.grey[400],
              child: Row(
                children: [
                  Icon(Icons.search),
                  Container(
                    child: Text('Search'),
                  )
                ],
              ),
            ),
          )),
      body: ExploreGrid(),
    );
  }
}
