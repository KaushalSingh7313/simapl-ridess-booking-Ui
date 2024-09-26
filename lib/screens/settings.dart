import 'package:flutter/material.dart';
import 'package:fyc_ride/util/typo.dart';
import 'package:fyc_ride/util/widgets/appbar.dart';
import 'package:gap/gap.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarD(
        title: "Setting",
      ),
      body: Column(
        children: [
          Gap(20),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text(
              "Notifications",
              style: Poppins.titleMedium2,
            ),
            subtitle: Text(
              "Currently on",
              style: Secondary.bodySmall,
            ),
            trailing: Switch(value: true, onChanged: (value) {}),
          ),
          ListTile(
            leading: Icon(Icons.public),
            title: Text(
              "Language",
              style: Poppins.titleMedium2,
            ),
            subtitle: Text(
              "English ( United Kingdom )",
              style: Secondary.bodySmall,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.star,
              color: Color(0xFFFFD700),
              size: 26,
            ),
            title: Text(
              "Enjoying the app ?",
              style: Poppins.titleMedium2,
            ),
            subtitle: Text(
              "Rate us",
              style: Secondary.bodySmall,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.people,
              size: 26,
            ),
            title: Text(
              "Blocked User",
              style: Poppins.titleMedium2,
            ),
            subtitle: Text(
              "05",
              style: Secondary.bodySmall,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.report,
              size: 26,
            ),
            title: Text(
              "Report Problem",
              style: Poppins.titleMedium2,
            ),
            subtitle: Text(
              "Report Users / Drivers",
              style: Secondary.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
