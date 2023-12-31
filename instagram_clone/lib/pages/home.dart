import 'package:flutter/material.dart';
import 'package:instagram_clone/util/bubble_stories.dart';
import 'package:instagram_clone/util/user_posts.dart';

class UseHome extends StatelessWidget {
  final List people = ['Yosef', 'Abel', 'Tadesse', 'Chala', 'Abebe', 'Kebede'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'Instagram',
            style: TextStyle(color: Colors.black),
          ),
          Row(
            children: [
              Icon(Icons.add),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Icon(Icons.favorite),
              ),
              Icon(Icons.share),
            ],
          )
        ]),
      ),
      body: Column(
        children: [
          //STORIES
          Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                },
              )),

          //Posts
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserPosts(
                  name: people[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
