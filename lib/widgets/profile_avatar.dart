import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.deepOrangeAccent.shade100,
          radius: 24,
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
    );
  }
}
