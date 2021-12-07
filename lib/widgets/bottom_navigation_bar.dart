import 'package:flutter/material.dart';

class BottomNavigationBarTravel extends StatefulWidget {
  // const BottomNavigationBar({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarTravelState createState() =>
      _BottomNavigationBarTravelState();
}

class _BottomNavigationBarTravelState extends State<BottomNavigationBarTravel> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              // _selectedIndex == 0
              //     ? new SvgPicture.asset('assets/svg/icon_home_colored.svg')
              //     : new SvgPicture.asset('assets/svg/icon_home.svg'),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            //  _selectedIndex == 1
            //     ? new SvgPicture.asset('assets/svg/icon_heart_colored.svg')
            //     : new SvgPicture.asset('assets/svg/icon_heart.svg'),
            label: 'Heart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            // _selectedIndex == 2
            //     ? new SvgPicture.asset('assets/svg/icon_plus_colored.svg')
            //     : new SvgPicture.asset('assets/svg/icon_plus.svg'),
            label: 'Plus',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            //  _selectedIndex == 3
            //     ? new SvgPicture.asset(
            //         'assets/svg/icon_notification_colored.svg')
            //     : new SvgPicture.asset('assets/svg/icon_notification.svg'),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            // _selectedIndex == 4
            //     ? new SvgPicture.asset('assets/svg/icon_user_colored.svg')
            //     : new SvgPicture.asset('assets/svg/icon_user.svg'),
            label: 'User',
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
      ),
    );
  }
}
