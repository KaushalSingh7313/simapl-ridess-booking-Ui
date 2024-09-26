import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppbarG extends StatelessWidget implements PreferredSizeWidget {
  const AppbarG({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight + 20,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 18, 0),
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          DrawerButton(
              //  onPressed: () => RootScaffold.openDrawer(context),
              ),
          Spacer(flex: 12),
          IconButton(
            icon: const Icon(CupertinoIcons.bell),
            //icon: const Icon(Icons.notifications_outlined),
            tooltip: 'Notifications',
            onPressed: () {},
          ),
          Spacer(flex: 1),
          CircleAvatar()
        ]),
      ),
    );
  }
}

class AppbarN extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppbarN({super.key, required this.title});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight + 20,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 18, 0),
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text(
            title,
            style: TextStyle(
                fontFamily: "poppins",
                debugLabel: ' titleLarge',
                inherit: false,
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.6,
                height: 1.27,
                textBaseline: TextBaseline.alphabetic,
                leadingDistribution: TextLeadingDistribution.even),
          )
        ]),
      ),
    );
  }
}

class AppbarD extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppbarD({super.key, required this.title});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight + 30,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(4, 40, 18, 0),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          DrawerButton(
              // onPressed: () => //scaffoldKey.currentState!.openDrawer(),
              //     RootScaffold.openDrawer(context),
              ),
          Text(
            title,
            style: TextStyle(
                fontFamily: "poppins",
                debugLabel: ' titleLarge',
                inherit: false,
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.6,
                height: 1.27,
                textBaseline: TextBaseline.alphabetic,
                leadingDistribution: TextLeadingDistribution.even),
          )
        ]),
      ),
    );
  }
}

class RootScaffold {
  static openDrawer(BuildContext context) {
    final ScaffoldState? scaffoldState = context.findRootAncestorStateOfType<ScaffoldState>();
    scaffoldState?.openDrawer();
  }
}
