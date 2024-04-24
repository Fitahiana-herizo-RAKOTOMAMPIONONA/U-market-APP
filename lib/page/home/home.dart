import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:xxx/model/model.dart';
import '../../data/data.dart';
import '../../widget/widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  static const String routeName = "/";
  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const MyHomePage(
              title: "SportMarket",
        )); 
  } 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBarPersonalise(widget.title),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: CarouselSlider(
              options: CarouselOptions(
                  aspectRatio: 1.5,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  initialPage: 0,
                  autoPlay: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  viewportFraction: .85),
              items: Category.imageSliders.map((e) => CarousselHero(category: e)).toList() ,
            )),
            titreWidget(
              titre: 'RECOMMENDED',
            ),
            Container(
                child: CarouselSlider.builder(
              options: CarouselOptions(
                aspectRatio: 3.0,
                enlargeCenterPage: false,
                viewportFraction: 0.7,
              ),
              itemCount: (imgList.length / 2).round(),
              itemBuilder: (context, index, realIdx) {
                final int first = index * 2;
                final int second = first + 1;
                return Row(
                  children: [first, second].map((idx) {
                    return Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Image.network(imgList[idx], fit: BoxFit.cover),
                      ),
                    );
                  }).toList(),
                );
              },
            )),
            titreWidget(
              titre: 'PACK',
            ),
            Container(
                child: CarouselSlider.builder(
              options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: false,
                viewportFraction: .8,
              ),
              itemCount: (packList.length / 2).round(),
              itemBuilder: (context, index, realIdx) {
                final int first = index * 2;
                final int second = first + 1;
                return Row(
                  children: [first, second].map((idx) {
                    return Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Image.network(packList[idx], fit: BoxFit.cover),
                      ),
                    );
                  }).toList(),
                );
              },
            )),
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.add),
      ),*/
      bottomNavigationBar: const AppBArBottomPersonalise(),
    );
  }
}
