import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      title: Text('Movies App', style: TextStyle(color: Colors.white)),
      centerTitle: true,
      leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
