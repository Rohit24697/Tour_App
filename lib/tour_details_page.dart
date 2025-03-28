import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/custom_nav_bar.dart';

class TourDetailPage extends StatelessWidget {
  final PageController _pageController =
  PageController(); // Added PageController

  TourDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications, color: Colors.black),
                onPressed: () {},
              ),
              Positioned(
                top: 8,
                right: 8,
                child: CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 6,
                ),
              ),
            ],
          ),
          IconButton(
            icon: Transform.rotate(
              angle: 1.5708, // 90 degrees in radians (π/2)
              child: const Icon(Icons.keyboard_control_outlined, color: Colors.black),
            ),
            onPressed: () {},
          ),
          // IconButton(
          //   icon: const Icon(Icons.keyboard_control_outlined, color: Colors.black,),
          //   onPressed: () {},
          // ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Slider
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: 200,
                child: PageView(
                  controller: _pageController,
                  children: [
                    Image.network(
                      "https://s3-alpha-sig.figma.com/img/c698/6bb7/375b0242c68382cd9d977b1a0529f684?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=jkOrkW9MOGgCA2C-KMkt41BuCe474M4HY2Fo7bxhC5D8rKeULQ5P7BWBJ0BGzReEJH4X06-~vNyZ8eEPoh1lJcePITIhT5MPaX~F3Ln3dErdtIUBiElv7KVf~X~jEhRJomLrHJEHOzscBWuTG6zSKu6yixkZUBp~FgeJLOCpUxFcmXbEeNpFNJAU~c2IR4nM~dNZ33HYmfN-FuRQ9UAKnpYg1YxGRBQ8wH-g49mKCpzDaL4dLWUgE2o6H7XZG0hUePQMKo5P-d9J1o81BO66pdClVTjX-8Af73BcrASlzmqr32VNmSZr8BC12xwD1VJPZ-B1HTwoZC0979xix5mClw__",
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      "https://s3-alpha-sig.figma.com/img/4654/b5e8/5972da0424d3e1b9b0447efb8b45f09e?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=s4DIEzVqKs-x-hFO9TAcsTSmcfxbfDWdR0eryH6iCpX8njpUvhnq7EN5h9XM7MVrB0PhymoSakjlTtIyZHDtCIsCM2qvW43ncIhEdJZeaE0RQBt~D59w1~XB2B16Yp5TAxTDG-whoH~gR2j5FYH0mlM8Z3IQ5v8w6lSkinX4I7VLziyWTnuKExrjZiPchdt7lMpOlxDkmvMEuo0PkBfEAiPgdr9UQzE1emlmOAId6pBX9lep6iQ2yaxy2yMZa3xqLkW~OZL-9iZfyennVD9813Uhhsz4g8g0zcawr6qXBDq~BgxqB0e6G9lzyXZ--56y9HfEdIH9KCU~01o~1kxugQ__",
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      "https://s3-alpha-sig.figma.com/img/61db/d295/647b1f7ba21c2a37fbcb581390723905?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=k1LtUWRz94YaUmfDL8nWKP0NqcViYFaGfJGikJ-lyWW5PpCRq8vj50MgZGzCrsDo1PRv4w5I7NDX1pBmhhM2XcJo2XON0crgk0PHHq1zzctdEYbvWmFUFWOkASfSxK7BuJDF3O9eABEMXk0k8nOmhuaTiorcDWrrAGafviIhpVTlaOF2PO02cBL3-2KZB85-zqwvhygEuJBzeR1TGIDCS-VtZyeF2R2LSEa~WUfBdBm417umGGR6Ve0tRBaMhRk1qtUSdrh71HqvhL7zURrnJpCxJbZ1OuQFtp7BQMUmvZo9NCfpSleJ0fE9xI-cCsC2b3YFX64IkbrgBPpZ09DIGg__",
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),

            // Smooth Page Indicator
            Center(
              child: SmoothPageIndicator(
                controller: _pageController, // Attach controller
                count: 3, // Number of images
                effect: ExpandingDotsEffect(
                  activeDotColor: Color(0xffFF7D0D),
                  dotHeight: 6,
                  dotWidth: 6,
                ),
              ),
            ),
            SizedBox(height: 10),

            // Title and Temperature
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Capital of Thailand",
                      style: TextStyle(fontSize: 18, fontFamily: "Gilroy-bold"),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xffFF7D0D),
                          size: 16,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Bangkok, Thailand",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Gilroy-Medium",
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.cloudy_snowing),
                    // Image.asset(
                    //   'assets/icons/tourDetails/cloud.png',
                    //   width: 24,
                    //   height: 24,
                    // ),
                    SizedBox(width: 5.0),
                    Text(
                      "30°C",
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Gilroy-bold",
                        fontSize: 11.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.0),

            // Price Tag
            Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 18),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "\$5000",
                style: TextStyle(
                  fontFamily: "Gilroy-bold",
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 11.0,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Service Section
            Text(
              "Service",
              style: TextStyle(fontSize: 18, fontFamily: "Gilroy-bold"),
            ),
            SizedBox(height: 15.0),

            // Service Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // Adjust spacing
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
            SizedBox(height: 35.0),
            Text(
              "Bangkok, Thailand’s capital, is a large city known for ornate shrines and vibrant street life. The boat-filled Chao Phraya River feeds its network of canals, flowing past the Rattanakosin royal district, home to opulent Grand Palace and its sacred Wat Phra Kaew Temple. earby is Wat Pho Temple with an enormous reclining Buddha and, on the opposite shore.",
              style: TextStyle(
                fontFamily: "Gilroy-Medium",
                fontSize: 11.0,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: 0),
    );
  }
}