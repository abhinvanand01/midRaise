import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:midraise/dummydata.dart';
import 'package:midraise/widgets/pie_chart_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  List<dynamic> _children = [

    ListView.builder(itemCount: companies.length, itemBuilder: (BuildContext context, int index) {
      return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
           ListTile(
            leading: FaIcon(
              FontAwesomeIcons.building,
              size: 35,
            ),
            title: Text(companies[index].name),
            subtitle: Text(companies[index].info),
          ),
          ButtonBar(
            children: <Widget>[
              RatingBarIndicator(
                rating: companies[index].rating,
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                itemSize: 20.0,
                direction: Axis.horizontal,
              ),
            ],
          ),
        ],
      ),
    ); },),
    Text("Page2"),
    PieChartPage(),

  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.bars),
                  onPressed: () {},
                ),
                Text("MidRaise"),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.redo),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: onTabTapped, // this will be set when a new tab is tapped
            items: [
              BottomNavigationBarItem(
                  icon: IconButton(
                    icon: FaIcon(FontAwesomeIcons.home),
                    onPressed: () {},
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: FaIcon(FontAwesomeIcons.newspaper),
                  onPressed: () {},
                ),
                label: "News",
              ),
              BottomNavigationBarItem(
                  icon: IconButton(
                    icon: FaIcon(FontAwesomeIcons.chartPie),
                    onPressed: () {},
                  ),
                  label: "Portfolio")
            ],
          ),
          body: _children[_currentIndex],
        ),
      ),
    );
  }
}
