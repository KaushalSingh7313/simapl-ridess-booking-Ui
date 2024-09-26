import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fyc_ride/asset_images.dart';
import 'package:fyc_ride/nav/ubottom.dart';
import 'package:fyc_ride/screens/about_us.dart';
import 'package:fyc_ride/screens/account.dart';
import 'package:fyc_ride/screens/privicy_policy.dart';
import 'package:fyc_ride/screens/support_help.dart';
import 'package:fyc_ride/screens/term_condition.dart';
import 'package:fyc_ride/util/typo.dart';
import 'package:gap/gap.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  static const String space = "   ";
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(drawer))),
        child: Drawer(
          backgroundColor: const Color.fromARGB(19, 0, 0, 0),
          child: Padding(
            padding: const EdgeInsets.only(top: 60, left: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                ),
                Gap(10),
                Text(
                  "Jackson Wales",
                  style: Poppins.titleLargew,
                ),
                Text(
                  "+91 222 265 6589",
                  style: Secondary.bodyMedium,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton.icon(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Account())),
                        style: ButtonStyle(
                            foregroundColor: WidgetStatePropertyAll(
                          Colors.grey,
                        )),
                        label: Text("${space}My Account"),
                        icon: Icon(Icons.person),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          page.value = 1;
                          Navigator.of(context).pop();
                        },
                        style: ButtonStyle(foregroundColor: WidgetStatePropertyAll(Colors.grey)),
                        label: Text("${space}My Rides"),
                        icon: SvgPicture.asset(carb, width: 20, colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn)),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          page.value = 2;
                          Navigator.of(context).pop();
                        },
                        style: ButtonStyle(foregroundColor: WidgetStatePropertyAll(Colors.grey)),
                        label: Text("${space}My Account"),
                        icon: SvgPicture.asset(wallet, width: 20, colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn)),
                      ),
                      TextButton.icon(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TermCondition())),
                        style: ButtonStyle(
                            foregroundColor: WidgetStatePropertyAll(
                          Colors.grey,
                        )),
                        label: Text("${space}Setting"),
                        icon: Icon(Icons.settings_outlined),
                      ),
                      TextButton.icon(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SupportHelp())),
                        style: ButtonStyle(
                            foregroundColor: WidgetStatePropertyAll(
                          Colors.grey,
                        )),
                        label: Text("${space}Customer Support"),
                        icon: Icon(Icons.support_agent),
                      ),
                      TextButton.icon(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TermCondition())),
                        style: ButtonStyle(foregroundColor: WidgetStatePropertyAll(Colors.grey)),
                        label: Text("${space}Subscription Plans"),
                        icon: SvgPicture.asset(subcription, width: 20, colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn)),
                      ),
                      TextButton.icon(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs())),
                        style: ButtonStyle(
                            foregroundColor: WidgetStatePropertyAll(
                          Colors.grey,
                        )),
                        label: Text("${space}About us"),
                        icon: Icon(Icons.info_outline),
                      ),
                      TextButton.icon(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TermCondition())),
                        style: ButtonStyle(foregroundColor: WidgetStatePropertyAll(Colors.grey)),
                        label: Text("${space}Terms And Condtions"),
                        icon: SvgPicture.asset(privicyPolicy, width: 20, colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn)),
                      ),
                      TextButton.icon(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PrivicyPolicy())),
                        style: ButtonStyle(
                            foregroundColor: WidgetStatePropertyAll(
                          Colors.grey,
                        )),
                        label: Text("${space}Privacy Policy"),
                        icon: Icon(Icons.description_outlined),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        style: ButtonStyle(
                            foregroundColor: WidgetStatePropertyAll(
                          Colors.grey,
                        )),
                        label: Text("${space}Sign out"),
                        icon: Icon(Icons.logout_rounded),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
