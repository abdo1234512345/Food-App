import 'package:flutter/material.dart';
import 'package:foodapp/constants/assets.dart';
import 'package:foodapp/core/utils/styles.dart';
import 'package:foodapp/features/Home_view/presention/views/widgets/burger_section.dart';
import 'package:foodapp/features/Home_view/presention/views/widgets/custom_container_kinds.dart';
import 'package:foodapp/features/Home_view/presention/views/widgets/nav_bar_icons.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {},
        backgroundColor: Color(0xffEF2A39),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        color: Color(0xffEF2A39),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: NavBarIcons(),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 19),
                child: Image.asset(
                  Assets.assetsImagesFoodgo,
                  height: 61,
                  width: 129,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Order your favourite food!",
                  style: Styles.robtomedian18.copyWith(
                    color: Color(0xff6A6A6A),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Customcontainerkinds(
                text: 'All',
                color: Color(0xffEF2A39),
                textcolor: Color(0xffF5F5F5),
              ),
              Customcontainerkinds(
                text: 'Combos',
                color: Color(0xffF3F4F6),
                textcolor: Color(0xff6A6A6A),
              ),
              Customcontainerkinds(
                text: 'Sliders',
                color: Color(0xffF3F4F6),
                textcolor: Color(0xff6A6A6A),
              ),
            ]),
            SizedBox(height: 25),
            BurgerSection(),
          ],
        ),
      ),
    );
  }
}
