import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gotour_travel_app/explore_page1.dart';

import 'map_page.dart';
import 'widgets/best_place_card.dart';
import 'widgets/build_card.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/custom_nav_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  void navigateToUsbPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MapPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
      AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Image.asset(
            //     "assets/icons/main_page/menu.png",
            //   height: 24.0,
            //   width: 24.0,
            // ),
            Icon(Icons.menu),
            Spacer(),
            Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.deepOrangeAccent.shade100,
                  radius: 22,
                  child: ClipOval(
                    child: Image.network(
                      'https://s3-alpha-sig.figma.com/img/00be/4300/0fd0830abab1c4eb77183a6676dc86c2?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=N7lq16Bg4zmgbyu5BMA~qu02ryhK~4sFLbuzL7SycKnByPIh~Cq3o7ATrHttD2aqpoCoX2VDrUSfo-TBqQkdDQ80NrVEwXCErLrY2mELfHFb8Wub7f4Y3VkRZpIcyVPkLWApDo4Cfu4hANRJbAyvXCBOLXXEFaF7bKWnTK9cAvrI6EWu8CDhD-J7WPN6c61WY44RlnYi9AGFAh~c6TvNUI0Dg~oXO3XsjkS~aPi6ZOu7S5YrpHkOyEdUS06Z2-t2GS6iTT038OrrSe8yFUAGq5VE6zjXCIjNl~3RXQpDfrimVhOZ2tY2Hlehuzpo~aAeK53ortZrwSOnojNkLZ-SKg__',
                      fit: BoxFit.cover,
                      width: 48,
                      height: 48,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.orange,
                    radius: 6,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.06),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get ready for",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontFamily: "Marcellus",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "The Travel Trip!",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontFamily: "Marcellus",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 16.0),

                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          hintText: 'Find your location...',
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: false,
                          // fillColor: Colors.black,
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:
                      const Icon(Icons.search, color: Colors.white, size: 24),
                    ),
                  ],
                ),

                SizedBox(height: screenHeight * 0.02),
                Text(
                  "My Location",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Gilroy-bold",
                  ),
                ),
                SizedBox(height: screenHeight * 0.015),

                buildCard(
                  imageUrl:
                  'https://s3-alpha-sig.figma.com/img/3ca5/deff/4cbf03037199187e999fe933641ae322?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=UUuDR2EiRAaN93wmeop6rum9RLqXYPXXZ2ozgTDmhQdjt4fuQBgvHtEd8-MhbCvDRGCkCZxDsC6b-JACI5NYaksDyY5ehfeEPUmS2SIFuLtcKe3au2WoI0aAEr2PlkU92cK2s5nKbMF7zeyFeIj~4p9mZMVE2giUJAFWxoX8Acd0awhjQu39~fAqqfOgw7zkqFXTEpG97BM3TVxmHo5KqyjtvRlsEsiPyXggSNG53yrhO4Zhp-uqeH03OHlpVmE5UvyfhxkcEPLsjalaySwpzeXYbS51vDUyLF0GwqZna1AnCycWl2qLB4v9eDEmT-WtT1Q2jSl~H8m1ZLZZm1k8mw__',
                  title: 'Winter in Portugal',
                  description:
                  "Portugal there's so much more to discover. Read about the Azores' new wave of eco-travel.",
                  isBookmarked: true,
                  location: 'Lisbon',
                ),

                // Container(
                //   padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                //   decoration: BoxDecoration(
                //     color: Colors.grey.shade100,
                //     borderRadius: BorderRadius.circular(15),
                //   ),
                //   child: Column(
                //     children: [
                //       Align(
                //         alignment: Alignment.topRight,
                //         child: Icon(
                //           Icons.bookmark,
                //           color: Color(0xffFF7D0D),
                //           size: screenWidth * 0.07,
                //         ),
                //       ),
                //       Padding(
                //         padding: EdgeInsets.all(screenWidth * 0.03),
                //         child: Row(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             ClipRRect(
                //               borderRadius: BorderRadius.circular(10),
                //               child: Image.network(
                //                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiWjZUhqhzcA4RhW08ouwCdwUVRThr0waEXA&s',
                //                 width: screenWidth * 0.15,
                //                 height: screenWidth * 0.15,
                //                 fit: BoxFit.cover,
                //               ),
                //             ),
                //             SizedBox(width: screenWidth * 0.03),
                //
                //             Expanded(
                //               child: Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Text(
                //                     "Winter in Portugal",
                //                     style: TextStyle(
                //                       fontFamily: "Gilroy-bold",
                //                       fontSize: 17.0,
                //                       fontWeight: FontWeight.w400,
                //                     ),
                //                   ),
                //                   SizedBox(height: screenHeight * 0.01),
                //                   Row(
                //                     children: [
                //                       Icon(
                //                         Icons.location_on,
                //                         color: Color(0xffFF7D0D),
                //                         size: screenWidth * 0.035,
                //                       ),
                //                       SizedBox(width: 4),
                //                       Text(
                //                         "Lisbon",
                //                         style: TextStyle(
                //                             fontFamily: "Gilroy-Medium",
                //                             color: Colors.grey,
                //                             fontSize: 15.0,
                //                             fontWeight: FontWeight.w400
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //       Padding(
                //         padding: EdgeInsets.all(screenWidth * 0.03),
                //         child: Align(
                //           alignment: Alignment.centerLeft,
                //           child: Text(
                //             "Portugal has so much more to discover. Read about the Azores' new wave of eco-travel.",
                //             maxLines: 2,
                //             overflow: TextOverflow.ellipsis,
                //             style: TextStyle(
                //                 fontFamily: "Gilroy-Medium",
                //                 color: Colors.grey.shade400,
                //                 fontSize: 13.0,
                //                 fontWeight: FontWeight.w400
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),

                SizedBox(height: screenHeight * 0.025),

                Row(
                  children: [
                    Text(
                      "Best Place",
                      style: TextStyle(
                        fontFamily: "Gilroy-bold",
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontFamily: "Gilroy-Medium",
                        fontSize: 13.5,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ExplorePage1()));
                    },
                    child: Row(
                      children: [
                        BestPlaceCard(
                          screenHeight: screenHeight,
                          screenWidth: screenWidth,
                          title: "Abserian a edlcain",
                          location: "Sismbra,Libson",
                          imageUrl:
                          "https://s3-alpha-sig.figma.com/img/3ca5/deff/4cbf03037199187e999fe933641ae322?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=UUuDR2EiRAaN93wmeop6rum9RLqXYPXXZ2ozgTDmhQdjt4fuQBgvHtEd8-MhbCvDRGCkCZxDsC6b-JACI5NYaksDyY5ehfeEPUmS2SIFuLtcKe3au2WoI0aAEr2PlkU92cK2s5nKbMF7zeyFeIj~4p9mZMVE2giUJAFWxoX8Acd0awhjQu39~fAqqfOgw7zkqFXTEpG97BM3TVxmHo5KqyjtvRlsEsiPyXggSNG53yrhO4Zhp-uqeH03OHlpVmE5UvyfhxkcEPLsjalaySwpzeXYbS51vDUyLF0GwqZna1AnCycWl2qLB4v9eDEmT-WtT1Q2jSl~H8m1ZLZZm1k8mw__",
                          price: '3000',
                        ),
                        SizedBox(width: screenWidth * 0.04),
                        BestPlaceCard(
                          screenHeight: screenHeight,
                          screenWidth: screenWidth,
                          title: "Vietnam",
                          price: "4000",
                          location: "Rondom,Vietnam",
                          imageUrl:
                          "https://s3-alpha-sig.figma.com/img/959b/9bf3/516c83ad71f95251dfded742f7975927?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=pKi3o270tHeULJS9MIregnx~hdQYvXtUIzrLVuPfEkw0Agi1toWA0XBVbiRCKURhhVPFcUz48zG9vdaTxEzptqSYMy2~rABOtOlf~Hms-J0MdIw-ZtHgBlOnaZlUgRECrMS2IpE9RmaTJ0ELNWRj80IRnPujPXzHBBd7rOv1pi-MuZye5qo5lCPm8qjijVHF9~kha2TheAIuXKZ82Te4nKZjx8aoFcaSeOQ9R8Cf1vJJ3thqF5cbYM39QhW6LzB3JfOgl9W1Y5Po7nTZ3sC48z3oxTchswtxdbtbakxV5pDjdj1C-pvIhClIIj7GkIbP~7LudEoe4Ldl7eBxMKt8JA__",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: 0),
    );
  }
}