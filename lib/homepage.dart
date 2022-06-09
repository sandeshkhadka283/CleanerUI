import 'package:flutter/material.dart';
import 'package:project2/cricle.dart';
import 'package:project2/square.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List posts = ['Post 1', 'Post 2', 'Post 3'];
    final List stories = ['Prakriti', 'Aakriti', 'Reena', 'Pooja'];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 90,
              child: ListView.builder(
                itemCount: stories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Circle(
                    child: stories[index],
                  );
                },
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (BuildContext context, int index) {
                  return Square(child: posts[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
