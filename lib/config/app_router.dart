import 'package:flutter/material.dart';
import 'package:xxx/page/favoris/favoris.dart';
import 'package:xxx/page/market/market.dart';
import 'package:xxx/page/page.dart';

class AppRouter {
  static Route oneGenerate(RouteSettings settings) {
    debugPrint("Route Settings :${settings.name}");
    switch (settings.name) {
      case "/":
        return MyHomePage.route();
      case MyHomePage.routeName:
        return MyHomePage.route();
      case MarketPage.routeName:
        return MarketPage.route();
      case Favoris.routeName:
        return Favoris.route();
      case PersonPage.routeName:
        return PersonPage.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(
            "page introuvable",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
