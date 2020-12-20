import 'package:flutter/material.dart';
import 'package:netflixclone/models/movie.dart';
import 'package:netflixclone/widgets/carousel.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로멘스/판타지',
      'poster': 'test_movie_1.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로멘스/판타지',
      'poster': 'test_movie_1.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로멘스/판타지',
      'poster': 'test_movie_1.png',
      'like': false
    })
  ];

  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Carousel(
              movies: movies,
            ),
            HomeTopBar()
          ],
        )
      ],
    );
  }
}

class HomeTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Image.asset(
              'images/bbongflix_logo.png',
              height: 30,
            ),
          ),
          Container(
            child: Text('TV 프로그램'),
          ),
          Container(
            child: Text('영화'),
          ),
          Container(
            child: Text('내가 찜한 컨텐츠'),
          ),
        ],
      ),
    );
  }
}
