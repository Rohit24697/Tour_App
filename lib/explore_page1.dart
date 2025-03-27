import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'tour_details_page.dart';
import 'widgets/custom_nav_bar.dart';
import 'widgets/explore_page_my_location_widget.dart';

class ExplorePage1 extends StatelessWidget {
  const ExplorePage1({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
            Text('Explore',
                style: const TextStyle(color: Colors.black, fontSize: 24)),
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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Adjust spacing
              children: [
                _buildRoundedImage(
                    "https://s3-alpha-sig.figma.com/img/959b/9bf3/516c83ad71f95251dfded742f7975927?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=pKi3o270tHeULJS9MIregnx~hdQYvXtUIzrLVuPfEkw0Agi1toWA0XBVbiRCKURhhVPFcUz48zG9vdaTxEzptqSYMy2~rABOtOlf~Hms-J0MdIw-ZtHgBlOnaZlUgRECrMS2IpE9RmaTJ0ELNWRj80IRnPujPXzHBBd7rOv1pi-MuZye5qo5lCPm8qjijVHF9~kha2TheAIuXKZ82Te4nKZjx8aoFcaSeOQ9R8Cf1vJJ3thqF5cbYM39QhW6LzB3JfOgl9W1Y5Po7nTZ3sC48z3oxTchswtxdbtbakxV5pDjdj1C-pvIhClIIj7GkIbP~7LudEoe4Ldl7eBxMKt8JA__"),
                _buildRoundedImage(
                    "https://s3-alpha-sig.figma.com/img/8539/3cd5/da860964127aac62f01bb848575ae3e6?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=CNtrdqEchhKzjpvWPMg-JxIjdlz3zNuQmYc~dRgwNVg2-xKhclAW~1p31SBwp3tu0nIvF83~~cKeThYT00dwi1BRj2J0Ayi5Lqn24G8fbzMyHMAkjsTOl2VJggNrx4vRLfhiNw-Vhk-m73OjiqsANrjl8wwVq32cohJfREg9fZhlYbx-RxPkk-ezKfpQFUhsNqzpiFFWSbeclmSvDO0AVJOu8YI4yChF3270k~-MxF9jrkR38aIbw~cmTMLIT7f0sOf0PceLssMzpuHsbqZ-6m5VuX0j5U0C6L-PbMRtt5XgtD~Ae5Xs95tQ6wpon4mN3Rd~K9DFbHc6gdE2XvazXQ__"),
                _buildRoundedImage(
                    "https://s3-alpha-sig.figma.com/img/4512/c99a/3bc8ae1544b67e7182f11c62f95a8fe6?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Oyp8~2wLvHqeumoEi9uO7medXhfF7XCk4pckBIe8byMdnjDMXXF95Klmtwzw0t0dsaLHe7l7XFFhFjUeGBh8zYu4DJL-jS38QixAxBYCR3CGdZfn8zMYDJDWqF76mTUBw-xCHR6ozU19cabwQvnmXgB14HoA0BCa6j5zHygfwmla5J0oFVuMoWEQNjMoE183gwDCId6XMF3ZmAJx6Xv6bTV1phLvZEzwsQrX-LobCeVSWquLEgtb~0h0hpiUTjyMBNt72ok0ZLpjRkyNt~7hdB659wSnYKpmf-9Qu1lKwkOTHhjMPfif5UbnoswKin6240GvZzgvsV9ALzulONPmTw__"),
                _buildRoundedImage(
                    "https://s3-alpha-sig.figma.com/img/61db/d295/647b1f7ba21c2a37fbcb581390723905?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=k1LtUWRz94YaUmfDL8nWKP0NqcViYFaGfJGikJ-lyWW5PpCRq8vj50MgZGzCrsDo1PRv4w5I7NDX1pBmhhM2XcJo2XON0crgk0PHHq1zzctdEYbvWmFUFWOkASfSxK7BuJDF3O9eABEMXk0k8nOmhuaTiorcDWrrAGafviIhpVTlaOF2PO02cBL3-2KZB85-zqwvhygEuJBzeR1TGIDCS-VtZyeF2R2LSEa~WUfBdBm417umGGR6Ve0tRBaMhRk1qtUSdrh71HqvhL7zURrnJpCxJbZ1OuQFtp7BQMUmvZo9NCfpSleJ0fE9xI-cCsC2b3YFX64IkbrgBPpZ09DIGg__"),
                _buildRoundedImage(
                    "https://s3-alpha-sig.figma.com/img/3cd4/dd3b/01a325e346cf826fc445229d15ecd1e2?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=TT6VqQmkDdnE~2FE-aqUmE2iIdaAGyPK-YjrR36DthmRXRzCrsEkIn1vOVGdSFrzAzpodiZfwMQlHDJHwfrQlzBFwhAVSSLcLW6Uz1H~E9F60mTIZW1tu~c8kfMK1QYhGe9VPNCq40P7eUgFsh4so24xI5j-n~LaZwFybO4758atAgwh2kuaeEmHganpBlbVD6eDfnuYRZWihxJikEdrk-2t-VMpep7Rvsjdho-Gy1JLWmqnIT8FBHc0KLk~5umkGbua73KNWwLYZR87fETrefmp0ACehc-APB5EcbIU~ZI30gdg~jGW8jUP92Mf9VoM5lFrrawcKiPWS191XYoMWw__"),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "My Location",
              style: TextStyle(
                fontFamily: "Gilroy-bold",
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: screenHeight * 0.02),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TourDetailPage()));
                },
                child: Row(
                  children: [
                    ExplorePageMyLocationWidget(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      title: "Abserian a edlcain",
                      description:
                      'Portugal there is so much more to discover, Read about the Azores new wave of eco travel..! ',
                      location: "Sismbra, Libson",
                      imageUrl:
                      "https://s3-alpha-sig.figma.com/img/3ca5/deff/4cbf03037199187e999fe933641ae322?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=UUuDR2EiRAaN93wmeop6rum9RLqXYPXXZ2ozgTDmhQdjt4fuQBgvHtEd8-MhbCvDRGCkCZxDsC6b-JACI5NYaksDyY5ehfeEPUmS2SIFuLtcKe3au2WoI0aAEr2PlkU92cK2s5nKbMF7zeyFeIj~4p9mZMVE2giUJAFWxoX8Acd0awhjQu39~fAqqfOgw7zkqFXTEpG97BM3TVxmHo5KqyjtvRlsEsiPyXggSNG53yrhO4Zhp-uqeH03OHlpVmE5UvyfhxkcEPLsjalaySwpzeXYbS51vDUyLF0GwqZna1AnCycWl2qLB4v9eDEmT-WtT1Q2jSl~H8m1ZLZZm1k8mw__",
                      price: '3000',
                    ),
                    SizedBox(width: screenWidth * 0.04),
                    ExplorePageMyLocationWidget(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      title: "Vietnam",
                      price: "4000",

                      description:
                      'Portugal there is so much more to discover, Read about the Azores new wave of eco travel..!',
                      location: "Rondom, Vietnam",
                      imageUrl:
                      "https://s3-alpha-sig.figma.com/img/d37e/3965/1512f0aea6c5fe8f5771733be71d9b99?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=eCHQjJZgzo-T-iKncfmU--zmcnBnirQ6yWZem04fV3knWbr5M~saYIF-bsE6-vfSJU1nGlAF8DBYBjddbsM~GduUVQqGsd~6UWwdix0Ae1sK-ft74Z7NJ4sKKIxgsDA5pNi5e0Q3sPsUmPRx1p9YycPZENnlH8pqMdmJLYBtoeEmX8u1QiKAY58EOsHY7nAu0XUWatchfBVrHWf8tQ0B2zfnQsXR5V7mKhqAMjkS~OeTvu3ANZKbDts0elVvlELMWv0Ht-InG2Yv0vB-hN6tzebfz-BGGKZh-0E6lV0CQv-z7M~-IN~Em8Hj-WsJMK2hJinbShHWs7GqHppuuPh0jA__",
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

  Widget _buildRoundedImage(String imageUrl) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16), // Rounded corners
      child: Image.network(
        imageUrl,
        width: 55,
        height: 55,
        fit: BoxFit.cover, // Makes sure images fit properly
      ),
    );
  }
}