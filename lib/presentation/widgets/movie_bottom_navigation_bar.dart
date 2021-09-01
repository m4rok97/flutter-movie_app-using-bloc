import 'package:flutter/material.dart';
import 'package:test_movie_app/presentation/themes/theme_color.dart';

class MovieBottomNavigationBar extends StatelessWidget {
  const MovieBottomNavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: ThemeColor.vulcan,
      selectedItemColor: ThemeColor.royalBlue,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.local_movies), label: 'All movies'),
        BottomNavigationBarItem(
            icon: Icon(Icons.emoji_emotions), label: 'Ticket'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_box), label: 'Account'),
      ],
    );
  }
}
