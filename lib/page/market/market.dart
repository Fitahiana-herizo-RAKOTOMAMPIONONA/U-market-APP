import 'package:flutter/material.dart';
import '../../widget/widget.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key, required this.title});
  final String title;
  static const String routeName = "/market";
  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) =>  const MarketPage(title: "Cart",)
    );
  }
  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBarPersonalise(widget.title),
      body: SingleChildScrollView(),
      bottomNavigationBar: AppBArBottomPersonalise(),
    );
  }
}
