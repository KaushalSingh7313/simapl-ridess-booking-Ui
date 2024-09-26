import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fyc_ride/asset_images.dart';
import 'package:fyc_ride/util/widgets.dart';

import '../screens/home.dart';
   ValueNotifier<int> page = ValueNotifier(0);
class UNav extends StatelessWidget {
  const UNav({super.key});

  @override
  Widget build(BuildContext context) {
    //  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);

    final screens = [const Home(), const Home(), const Home(), const Home()];

    return ValueListenableBuilder(
      valueListenable: page,
      builder: (BuildContext context, value, Widget? child) => Scaffold(
        // backgroundColor: black,
        body: screens[value],
        bottomNavigationBar: NavigationBar(
          indicatorColor: Colors.transparent,
          animationDuration: const Duration(milliseconds: 250),
          elevation: 10,
          height: 60,
          backgroundColor: Colors.black,
          selectedIndex: value,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          onDestinationSelected: (int newIndex) {
            // setState(() {
            page.value = newIndex;

            // });
          },
          destinations: [
            NavigationDestination(
              selectedIcon: SvgPicture.asset(
                home,
                semanticsLabel: 'home',
                height: 22,
              ).textGradientr,
              icon: SvgPicture.asset(home,
                  height: 20, colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn), semanticsLabel: 'home'),
              label: 'home',
            ),
            NavigationDestination(
              selectedIcon: SvgPicture.asset(
                carb,
                semanticsLabel: 'Car',
                height: 22,
              ).textGradientr,
              icon: SvgPicture.asset(carb,
                  height: 20, colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn), semanticsLabel: 'carb'),
              label: 'Car',
            ),
            NavigationDestination(
              selectedIcon: SvgPicture.asset(
                chat,
                semanticsLabel: 'Chat',
                height: 22,
              ).textGradientr,
              icon: SvgPicture.asset(chat,
                  height: 20, colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn), semanticsLabel: 'Chat'),
              label: 'Chat',
            ),
            NavigationDestination(
              selectedIcon: SvgPicture.asset(
                user,
                semanticsLabel: 'User',
                height: 22,
              ).textGradientr,
              icon: SvgPicture.asset(user,
                  height: 20, colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn), semanticsLabel: 'User'),
              label: 'User',
            ),
          ],
        ),
      ),
    );
  }
}
