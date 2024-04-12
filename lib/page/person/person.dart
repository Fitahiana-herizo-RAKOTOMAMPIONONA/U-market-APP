import 'package:flutter/material.dart';
import '../../widget/widget.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key, required this.title});
  final String title;
  static const String routeName = "/person";
  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) =>  const PersonPage(title: "Person",)
    );
  }
  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBarPersonalise(widget.title),
     
      bottomNavigationBar: AppBArBottomPersonalise(),
    );
  }
}
