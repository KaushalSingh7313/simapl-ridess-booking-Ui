import 'package:flutter/material.dart';
import 'package:fyc_ride/asset_images.dart';
import 'package:fyc_ride/util/typo.dart';
import 'package:fyc_ride/util/widgets/appbar.dart';
import 'package:fyc_ride/util/widgets/drawer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppbarD(title: "About us"),
         drawer: MyDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Image.asset(logo),
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit vulputate luctus morbi justo, nisl aliquet lorem. Amet in amet nisi aliquam volutpat a aliquam pellentesque. Scelerisque diam nulla condimentum morbi tincidunt nulla nulla libero purus. Auctor fermentum nec aliquam elementum parturient risus. Mauris proin dictum suspendisse id tristique varius mattis erat sed. Lacus, ut pretium placerat cursus feugiat pulvinar rhoncus. Neque phasellus eu est neque viverra in ullamcorper. Sed tellus pretium tempus nibh. Neque nunc in ut nunc. \n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit vulputate luctus morbi justo, nisl aliquet lorem. Amet in amet nisi aliquam volutpat a aliquam pellentesque. Scelerisque diam nulla condimentum morbi tincidunt nulla nulla libero purus. Auctor fermentum nec aliquam elementum parturient risus. Mauris proin dictum suspendisse id tristique varius mattis erat sed. Lacus, ut pretium placerat cursus feugiat pulvinar rhoncus. Neque phasellus eu est neque viverra in ullamcorper. Sed tellus pretium tempus nibh. Neque nunc in ut nunc.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit vulputate luctus morbi justo, nisl aliquet lorem. Amet in amet nisi aliquam volutpat a aliquam pellentesque. Scelerisque diam nulla condimentum morbi tincidunt nulla nulla libero purus. Auctor fermentum nec aliquam elementum parturient risus. Mauris proin dictum suspendisse id tristique varius mattis erat sed. Lacus, ut pretium placerat cursus feugiat pulvinar rhoncus. Neque phasellus eu est neque viverra in ullamcorper. Sed tellus pretium tempus nibh. Neque nunc in ut nunc.",
              style: Poppins.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
