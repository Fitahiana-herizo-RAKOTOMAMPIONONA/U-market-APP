import 'package:flutter/material.dart';
import '../../widget/widget.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key, required this.title});
  final String title;
  static const String routeName = "/person";
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => const PersonPage(
              title: "Person",
            ));
  }
  
  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  TextEditingController _nom =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBarPersonalise(widget.title),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              child: Image.network("../../../assets/image/block.jpg",fit: BoxFit.cover,),
              decoration:  const BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(3.14)),
              ),
            ),
            Positioned(
              left: 02,
              child: Text("Zo")
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _nom,
              decoration: InputDecoration(
                labelText: "votre Nom",
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AppBArBottomPersonalise(),
    );
  }
}
