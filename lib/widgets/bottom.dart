import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        height: 80,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: [
            Tab(
              icon: Icon(Icons.home, size: 30),
              child: Text(
                'Home',
                style: TextStyle(fontSize: 13),
              ),
            ),
            Tab(
              icon: Icon(Icons.search, size: 30),
              child: Text(
                'Search',
                style: TextStyle(fontSize: 13),
              ),
            ),
            Tab(
              icon: Icon(Icons.save_alt, size: 30),
              child: Text(
                'Save',
                style: TextStyle(fontSize: 13),
              ),
            ),
            Tab(
              icon: Icon(Icons.list, size: 30),
              child: Text(
                'More',
                style: TextStyle(fontSize: 13),
              ),
            )
          ],
        ),
      ),
    );
  }
}
