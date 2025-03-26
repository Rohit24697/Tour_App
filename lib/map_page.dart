import 'package:flutter/material.dart';
import 'explore_page.dart';
import 'widgets/build_card.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  void navigateToUsbPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ExplorePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text('Map',
            style: TextStyle(color: Colors.black, fontSize: 24)),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              CircleAvatar(
                backgroundColor: Colors.deepOrangeAccent.shade100,
                radius: 24, // Adjust the radius as needed
                child: ClipOval(
                  child: Image.network(
                    'https://s3-alpha-sig.figma.com/img/00be/4300/0fd0830abab1c4eb77183a6676dc86c2?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=N7lq16Bg4zmgbyu5BMA~qu02ryhK~4sFLbuzL7SycKnByPIh~Cq3o7ATrHttD2aqpoCoX2VDrUSfo-TBqQkdDQ80NrVEwXCErLrY2mELfHFb8Wub7f4Y3VkRZpIcyVPkLWApDo4Cfu4hANRJbAyvXCBOLXXEFaF7bKWnTK9cAvrI6EWu8CDhD-J7WPN6c61WY44RlnYi9AGFAh~c6TvNUI0Dg~oXO3XsjkS~aPi6ZOu7S5YrpHkOyEdUS06Z2-t2GS6iTT038OrrSe8yFUAGq5VE6zjXCIjNl~3RXQpDfrimVhOZ2tY2Hlehuzpo~aAeK53ortZrwSOnojNkLZ-SKg__',
                    fit: BoxFit.cover,
                    width: 48, // 2 * radius
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
        ),
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
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
            top: 25.0, bottom: 8.0, right: 16.0, left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            const SizedBox(height: 20),
            const Text('My Location',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildCard(
                    imageUrl:
                        'https://s3-alpha-sig.figma.com/img/3ca5/deff/4cbf03037199187e999fe933641ae322?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=UUuDR2EiRAaN93wmeop6rum9RLqXYPXXZ2ozgTDmhQdjt4fuQBgvHtEd8-MhbCvDRGCkCZxDsC6b-JACI5NYaksDyY5ehfeEPUmS2SIFuLtcKe3au2WoI0aAEr2PlkU92cK2s5nKbMF7zeyFeIj~4p9mZMVE2giUJAFWxoX8Acd0awhjQu39~fAqqfOgw7zkqFXTEpG97BM3TVxmHo5KqyjtvRlsEsiPyXggSNG53yrhO4Zhp-uqeH03OHlpVmE5UvyfhxkcEPLsjalaySwpzeXYbS51vDUyLF0GwqZna1AnCycWl2qLB4v9eDEmT-WtT1Q2jSl~H8m1ZLZZm1k8mw__',
                    title: 'Winter in Portugal',
                    description:
                        "Portugal there's so much more to discover. Read about the Azores' new wave of eco-travel.",
                    isBookmarked: true,
                    location: 'Lisbon',
                  ), // First card
                  SizedBox(width: 16), // Spacing between cards
                  buildCard(
                    imageUrl:
                        'https://s3-alpha-sig.figma.com/img/4654/b5e8/5972da0424d3e1b9b0447efb8b45f09e?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=s4DIEzVqKs-x-hFO9TAcsTSmcfxbfDWdR0eryH6iCpX8njpUvhnq7EN5h9XM7MVrB0PhymoSakjlTtIyZHDtCIsCM2qvW43ncIhEdJZeaE0RQBt~D59w1~XB2B16Yp5TAxTDG-whoH~gR2j5FYH0mlM8Z3IQ5v8w6lSkinX4I7VLziyWTnuKExrjZiPchdt7lMpOlxDkmvMEuo0PkBfEAiPgdr9UQzE1emlmOAId6pBX9lep6iQ2yaxy2yMZa3xqLkW~OZL-9iZfyennVD9813Uhhsz4g8g0zcawr6qXBDq~BgxqB0e6G9lzyXZ--56y9HfEdIH9KCU~01o~1kxugQ__',
                    title: 'Japan Most Unique Country',
                    description:
                        "Japan offers a perfect blend of tradition and innovation. Discover serene temples, vibrant cities",
                    location: 'Sesimbra, Lisbon',
                    isBookmarked: false,
                  ), // Second card
                ],
              ),
            ),
            SizedBox(width: 16), // Spacing between cards
            // buildCard(),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 250,
                color: Colors.grey.shade200,
                child: const Center(child: Text('Map Placeholder')),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 0) {
            navigateToUsbPage(context); // Navigate on USB icon tap
          }
        },
        selectedItemColor: Colors.orange,
        // Assuming orange is the selected color
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.usb_outlined, color: Colors.grey, size: 28),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.grey, size: 28),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: Colors.grey, size: 28),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on, color: Colors.orange, size: 28),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, color: Colors.grey, size: 28),
            label: '',
          ),
        ],
      ),
    );
  }
}
