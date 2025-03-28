import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'choice_date_page.dart';
import 'widgets/custom_nav_bar.dart';
import 'widgets/orange_button.dart';
import 'widgets/region_button.dart';
import 'widgets/user_button.dart';


class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          // Add back arrow
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Discover",
          style: TextStyle(
            fontSize: 26.0,
            fontFamily: "Marcellus",
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChoiceDatePage()),
            );
          }, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to left
            children: [
              /// Search bar with selected filters
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: 16.0,
                  ), // Adjust padding
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: SingleChildScrollView(
                      // Enables horizontal scrolling
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        // Takes only required space
                        children: [
                          OrangeButton(text: "Europe"),
                          const SizedBox(width: 13.0),
                          OrangeButton(text: "5 Star"),
                          const SizedBox(width: 13.0),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30.0), // Space below Row
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "By Region",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      fontFamily: "Gilroy-bold",
                    ),
                  ),
                  SizedBox(height: 20.0),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 25.0,
                    childAspectRatio: 2.2,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      RegionButton(text: "Asia"),
                      RegionButton(text: "Africa"),
                      RegionButton(text: "Europe", isSelected: true),
                      // Selected Orange Box
                      RegionButton(text: "America"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "By User",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      fontFamily: "Gilroy-bold",
                    ),
                  ),
                  SizedBox(height: 20.0),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 25.0,
                    childAspectRatio: 2.2,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      UserButton(text: "Popular"),
                      UserButton(text: "Best Choice"),
                      UserButton(text: "Last Trip's"),
                      // Selected Orange Box
                      UserButton(text: "5 Star", isSelected: true),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: 0),
    );
  }
}

//
// import 'package:flutter/material.dart';
//
// import 'widgets/custom_nav_bar.dart';
// import 'widgets/orange_button.dart';
// import 'widgets/region_button.dart';
// import 'widgets/user_button.dart';
//
// class DiscoverPage extends StatefulWidget {
//   const DiscoverPage({super.key});
//
//   @override
//   State<DiscoverPage> createState() => _DiscoverPageState();
// }
//
// class _DiscoverPageState extends State<DiscoverPage> {
//   List<String> _selectedFilters = [];
//   List<String> _selectedRegions = [];
//   List<String> _selectedUsers = [];
//
//   void _toggleRegionSelection(String region) {
//     setState(() {
//       if (_selectedRegions.contains(region)) {
//         _selectedRegions.remove(region);
//         _selectedFilters.remove(region);
//       } else {
//         _selectedRegions.add(region);
//         _selectedFilters.add(region);
//       }
//     });
//   }
//
//   void _toggleUserSelection(String user) {
//     setState(() {
//       if (_selectedUsers.contains(user)) {
//         _selectedUsers.remove(user);
//         _selectedFilters.remove(user);
//       } else {
//         _selectedUsers.add(user);
//         _selectedFilters.add(user);
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios_new),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         title: const Text(
//           "Discover",
//           style: TextStyle(
//             fontSize: 26.0,
//             fontFamily: "Marcellus",
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.more_vert),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   contentPadding: const EdgeInsets.symmetric(
//                     vertical: 14.0,
//                     horizontal: 16.0,
//                   ),
//                   prefixIcon: Padding(
//                     padding: const EdgeInsets.only(left: 8),
//                     child: SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: _selectedFilters
//                             .map((filter) => Padding(
//                           padding: const EdgeInsets.only(right: 13.0),
//                           child: OrangeButton(text: filter),
//                         ))
//                             .toList(),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 30.0),
//               Column(
//                 mainAxisSize: MainAxisSize.max,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "By Region",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18.0,
//                       fontFamily: "Gilroy-bold",
//                     ),
//                   ),
//                   SizedBox(height: 20.0),
//                   GridView.count(
//                     shrinkWrap: true,
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 10.0,
//                     mainAxisSpacing: 25.0,
//                     childAspectRatio: 2.2,
//                     physics: NeverScrollableScrollPhysics(),
//                     children: [
//                       RegionButton(
//                         text: "Asia",
//                         isSelected: _selectedRegions.contains("Asia"),
//                         onTap: () { _toggleRegionSelection("Asia");}
//                       ),
//                       RegionButton(
//                         text: "Africa",
//                         isSelected: _selectedRegions.contains("Africa"),
//                         onTap: () => print("Africa selected")
//                             // _toggleRegionSelection("Africa"),
//                       ),
//                       RegionButton(
//                         text: "Europe",
//                         isSelected: _selectedRegions.contains("Europe"),
//                         onTap: () => _toggleRegionSelection("Europe"),
//                       ),
//                       RegionButton(
//                         text: "America",
//                         isSelected: _selectedRegions.contains("America"),
//                         onTap: () => _toggleRegionSelection("America"),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(height: 30.0),
//               Column(
//                 mainAxisSize: MainAxisSize.max,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "By User",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18.0,
//                       fontFamily: "Gilroy-bold",
//                     ),
//                   ),
//                   SizedBox(height: 20.0),
//                   GridView.count(
//                     shrinkWrap: true,
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 10.0,
//                     mainAxisSpacing: 25.0,
//                     childAspectRatio: 2.2,
//                     physics: NeverScrollableScrollPhysics(),
//                     children: [
//                       UserButton(
//                         text: "Popular",
//                         isSelected: _selectedUsers.contains("Popular"),
//                         onTap: () => _toggleUserSelection("Popular"),
//                       ),
//                       UserButton(
//                         text: "Best Choice",
//                         isSelected: _selectedUsers.contains("Best Choice"),
//                         onTap: () => _toggleUserSelection("Best Choice"),
//                       ),
//                       UserButton(
//                         text: "Last Trip's",
//                         isSelected: _selectedUsers.contains("Last Trip's"),
//                         onTap: () => _toggleUserSelection("Last Trip's"),
//                       ),
//                       UserButton(
//                         text: "5 Star",
//                         isSelected: _selectedUsers.contains("5 Star"),
//                         onTap: () => _toggleUserSelection("5 Star"),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: CustomBottomNavBar(selectedIndex: 0),
//     );
//   }
// }