import 'package:flutter/material.dart';
import '../../widget/widget.dart';

class Favoris extends StatefulWidget {
  const Favoris({super.key, required this.title});
  final String title;
  static const String routeName = "/favoris";
  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) =>  const Favoris(title: "Favoris",)
    );
  }
  @override
  State<Favoris> createState() => _FavorisState();
}

class _FavorisState extends State<Favoris> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBarPersonalise(widget.title),
      
      bottomNavigationBar: AppBArBottomPersonalise(),
    );
  }
}
