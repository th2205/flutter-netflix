import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/models/movie.dart';

class Carousel extends StatefulWidget {
  final List<Movie> movies;

  Carousel({this.movies});
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  List<Movie> movies;
  List<Widget> images;
  List<String> keywords;
  List<bool> likes;
  int _currentPage = 0;
  String _currentKeyword;

  void initState() {
    super.initState();
    movies = widget.movies;
    images =
        movies.map((movie) => Image.asset('./images/' + movie.poster)).toList();
    keywords = movies.map((movie) => movie.keyword).toList();
    likes = movies.map((movie) => movie.like).toList();
    _currentKeyword = keywords[0];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
        ),
        CarouselSlider(
            items: images,
            options: CarouselOptions(
              autoPlayCurve: Curves.fastOutSlowIn,
              onPageChanged: onPageChange,
            )),
        Container(
          child: Text(_currentKeyword),
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(children: [
                  likes[_currentPage]
                      ? IconButton(icon: Icon(Icons.check), onPressed: () {})
                      : IconButton(icon: Icon(Icons.add), onPressed: () {}),
                  Text('내가 찜한 컨텐츠', style: TextStyle(fontSize: 11)),
                ]),
              ),
              Container(
                child: FlatButton(
                  color: Colors.white,
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow,
                        color: Colors.black,
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 0, 8, 0)),
                      Text(
                        '재생',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20),
                child: Column(children: [
                  IconButton(icon: Icon(Icons.info), onPressed: () {}),
                  Text('더보기', style: TextStyle(fontSize: 11)),
                ]),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: makeIndcator(likes, _currentPage),
          ),
        )
      ],
    );
  }

  onPageChange(int index, CarouselPageChangedReason reason) {
    setState(() {
      _currentPage = index;
      _currentKeyword = keywords[_currentPage];
    });
  }

  List<Widget> makeIndcator(List list, int _currentpage) {
    List<Widget> result = [];

    for (var i = 0; i < list.length; i++) {
      result.add(Container(
        width: 8,
        height: 8,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentpage == i
                ? Color.fromRGBO(255, 255, 255, 0.9)
                : Color.fromRGBO(255, 255, 255, 0.4)),
      ));
    }

    return result;
  }
}
