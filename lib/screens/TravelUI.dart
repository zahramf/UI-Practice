import 'package:flutter/material.dart';
import 'package:sales_app/widgets/destination_carousel.dart';
import 'package:sales_app/widgets/hotel_carousel.dart';

class TravelUI extends StatefulWidget {
  const TravelUI({Key? key}) : super(key: key);

  @override
  _TravelUIState createState() => _TravelUIState();
}

class _TravelUIState extends State<TravelUI> {
  int _selected = 0;
  int _currentTab = 0;
  List<IconData> _icons = [
    Icons.airplanemode_active,
    Icons.bed,
    Icons.directions_walk,
    Icons.bike_scooter,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selected = index;
        });
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: _selected == index
              ? Theme.of(context).accentColor
              : Colors.grey[300],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          _icons[index],
          size: 25,
          color: _selected == index
              ? Theme.of(context).primaryColor
              : Colors.grey[600],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Text(
                "What you would like to find?",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _icons
                    .asMap()
                    .entries
                    .map(
                      (MapEntry map) => _buildIcon(map.key),
                    )
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: DestinationCarousel(),
            ),
            HotelCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 20,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.food_bank,
              size: 20,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contacts,
              size: 20,
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
