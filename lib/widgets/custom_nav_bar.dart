// import 'package:flutter/material.dart';
//
// class CustomNavBar extends StatelessWidget {
//   final int currentIndex;
//   final Function(int) onTap;
//
//   const CustomNavBar({
//     super.key,
//     required this.currentIndex,
//     required this.onTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(16),
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 10,
//             spreadRadius: 2,
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: List.generate(5, (index) {
//           List<IconData> icons = [
//             Icons.tune, // Filters Icon (Replaced USB with Tune)
//             Icons.notifications,
//             Icons.chat_bubble_outline,
//             Icons.location_on,
//             Icons.person_outline
//           ];
//
//           return IconButton(
//             icon: Icon(
//               icons[index],
//               color: currentIndex == index ? Colors.orange : Colors.grey,
//               size: 28,
//             ),
//             onPressed: () => onTap(index),
//           );
//         }),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
//
// class MyBottomNavigationBar extends StatelessWidget {
//   final int selectedIndex;
//   final Function(int) onItemTapped;
//
//   const MyBottomNavigationBar({
//     Key? key,
//     required this.selectedIndex,
//     required this.onItemTapped,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.grey[200],
//       ),
//       margin: const EdgeInsets.all(16),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             _buildNavItem(0, Icons.settings, 'Settings', selectedIndex),
//             _buildNavItem(1, Icons.notifications, 'Notifications', selectedIndex),
//             _buildNavItem(2, Icons.chat_bubble, 'Chat', selectedIndex),
//             _buildNavItem(3, Icons.location_on, 'Location', selectedIndex),
//             _buildNavItem(4, Icons.person, 'Profile', selectedIndex),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildNavItem(int index, IconData icon, String label, int selectedIndex) {
//     final isSelected = selectedIndex == index;
//     return GestureDetector(
//       onTap: () => onItemTapped(index),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(
//             icon,
//             color: isSelected ? Colors.orange : Colors.grey,
//           ),
//           // Optional: Add a label below the icon
//           // if (isSelected)
//           //   Text(
//           //     label,
//           //     style: const TextStyle(fontSize: 12, color: Colors.orange),
//           //   ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:gotour_travel_app/explore_page2.dart';
import 'package:gotour_travel_app/hot_place_page.dart';
import 'package:gotour_travel_app/main_page.dart';
import 'package:gotour_travel_app/map_page.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;

  const CustomBottomNavBar({Key? key, required this.selectedIndex}) : super(key: key);

  void _onItemTapped(BuildContext context, int index) {
    if (index == selectedIndex) return;

    switch (index) {
      case 0:
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => MainPage()));
        break;
      case 1:
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HotPlacePage()));
        break;
      case 2:
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => ExplorePage2()));
        break;
      case 3:
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => MapPage()));
        break;
      case 4:
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HotPlacePage()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      onTap: (index) => _onItemTapped(context, index),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.usb_outlined, size: 28), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.notifications, size: 28), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.chat, size: 28), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.location_on, size: 28), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline, size: 28), label: ""),

      ],
    );
  }
}