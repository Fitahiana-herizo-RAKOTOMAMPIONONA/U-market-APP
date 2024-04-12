import 'package:flutter/material.dart';

class AppBArBottomPersonalise extends StatelessWidget {
  const AppBArBottomPersonalise({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Container(
        height: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 30,
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/market');
                },
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 30,
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/favoris');
                },
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 30,
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/person');
                },
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                )),
          ],
        ),
      ),
    );
  }
}
