import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'hot_place_page.dart';
import 'widgets/custom_nav_bar.dart';


class UpcomingTourPage extends StatelessWidget {
  const UpcomingTourPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text(
          "Upcomming Tour",
          style: TextStyle(fontFamily: "Marcellus", fontSize: 26),
        ),
        actions: [
          IconButton(onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => ProfilePage()),
            // );
          }, icon: const Icon(Icons.more_vert)),
        ],
      ),
      // Service Icons
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // Aligns children to the left
          children: [
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Adjust spacing
              children: [
                Icon(Icons.sunny,size: 24,),
                // Image.asset(
                //   "assets/icons/tourDetails/sun.png",
                //   width: 50,
                //   height: 50,
                // ),
                Icon(Icons.airplanemode_active,size: 24,),
                // Image.asset(
                //   "assets/icons/tourDetails/Air.png",
                //   width: 50,
                //   height: 50,
                // ),
                Icon(Icons.directions_boat_filled_sharp,size: 24,),
                // Image.asset(
                //   "assets/icons/tourDetails/Boat.png",
                //   width: 50,
                //   height: 50,
                // ),
                Icon(Icons.car_crash,size: 24,),
                // Image.asset(
                //   "assets/icons/tourDetails/Car.png",
                //   width: 50,
                //   height: 50,
                // ),
                Icon(Icons.directions_bike,size: 24,),
                // Image.asset(
                //   "assets/icons/tourDetails/Bick.png",
                //   width: 50,
                //   height: 50,
                // ),
              ],
            ),
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.only(left: 16.0), // Align text to the left
              child: Text(
                "7 days up to the next tour",
                style: TextStyle(fontFamily: "Gilroy-bold", fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20.0),
        
            // Flight Duration
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 20.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Light background
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "15 Feb",
                      style: TextStyle(
                        fontSize: 13.0,
                        fontFamily: "Gilroy-Medium",
                        color: Colors.grey.shade700,
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 2,
                            color: Colors.grey[500], // Light grey line
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 2,
                              width: 120, // Adjust the width of the orange part
                              color: Color(0xffFF7D0D),
                            ),
                          ),
                          IconButton(onPressed: (){}, icon: Transform.rotate(angle: 1.5708,
                          child: const Icon(
                            Icons.flight,
                            color: Color(0xffFF7D0D),
                            size: 24.0,
                          ),)),
        
                        ],
                      ),
                    ),
                    Text(
                      "22 Feb",
                      style: TextStyle(
                        fontSize: 13.0,
                        fontFamily: "Gilroy-Medium",
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              // Align "History" text to the left
              child: Text(
                "History",
                style: TextStyle(fontFamily: "Gilroy-bold", fontSize: 18.0),
              ),
            ),
            const SizedBox(height: 16.0),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HotPlacePage()),
                );
              },
              child: Container(
                width: 350, // Adjust width as needed
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://s3-alpha-sig.figma.com/img/3ca5/deff/4cbf03037199187e999fe933641ae322?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=UUuDR2EiRAaN93wmeop6rum9RLqXYPXXZ2ozgTDmhQdjt4fuQBgvHtEd8-MhbCvDRGCkCZxDsC6b-JACI5NYaksDyY5ehfeEPUmS2SIFuLtcKe3au2WoI0aAEr2PlkU92cK2s5nKbMF7zeyFeIj~4p9mZMVE2giUJAFWxoX8Acd0awhjQu39~fAqqfOgw7zkqFXTEpG97BM3TVxmHo5KqyjtvRlsEsiPyXggSNG53yrhO4Zhp-uqeH03OHlpVmE5UvyfhxkcEPLsjalaySwpzeXYbS51vDUyLF0GwqZna1AnCycWl2qLB4v9eDEmT-WtT1Q2jSl~H8m1ZLZZm1k8mw__', // Replace with your image URL
                        width: 60, // Adjust image width as needed
                        height: 90, // Adjust image height as needed
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Winter in Portugal',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.orange,
                                size: 16,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Lisbon',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  '\$3 000',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  '7 day',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  'winter',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
        
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            InkWell(
              child: Container(
                width: 350, // Adjust width as needed
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://s3-alpha-sig.figma.com/img/959b/9bf3/516c83ad71f95251dfded742f7975927?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=pKi3o270tHeULJS9MIregnx~hdQYvXtUIzrLVuPfEkw0Agi1toWA0XBVbiRCKURhhVPFcUz48zG9vdaTxEzptqSYMy2~rABOtOlf~Hms-J0MdIw-ZtHgBlOnaZlUgRECrMS2IpE9RmaTJ0ELNWRj80IRnPujPXzHBBd7rOv1pi-MuZye5qo5lCPm8qjijVHF9~kha2TheAIuXKZ82Te4nKZjx8aoFcaSeOQ9R8Cf1vJJ3thqF5cbYM39QhW6LzB3JfOgl9W1Y5Po7nTZ3sC48z3oxTchswtxdbtbakxV5pDjdj1C-pvIhClIIj7GkIbP~7LudEoe4Ldl7eBxMKt8JA__', // Replace with your image URL
                        width: 60, // Adjust image width as needed
                        height: 90, // Adjust image height as needed
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sesimbra e Arrabida',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.orange,
                                size: 16,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Sesimbra, Lisbon',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  '\$2 000',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  '3 day',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  'summer',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
        
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: 0),
    );
  }
}