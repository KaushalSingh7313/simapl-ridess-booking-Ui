import 'package:flutter/material.dart';
import 'package:fyc_ride/screens/support_chat.dart';
import 'package:fyc_ride/util/typo.dart';
import 'package:fyc_ride/util/widgets/appbar.dart';
import 'package:fyc_ride/util/widgets/drawer.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        backgroundColor: Colors.black,
        appBar: AppbarD(title: "Messages"),
        body: ListView.separated(
            padding: EdgeInsets.fromLTRB(7, 5, 7, 0),
            itemCount: 20,
            separatorBuilder: (context, index) => Divider(
                  thickness: 0.6,
                  height: 0.8,
                ),
            itemBuilder: (context, index) => ListTile(
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SupportChat()),
                    ),
                leading: CircleAvatar(
                  radius: 30,
                ),
                title: Text(
                  "Soniya zerrt",
                  style: Poppins.titleMedium,
                ),
                subtitle: Text(
                  "I Will come In 10 min",
                  style: Poppins.bodySmall,
                ),
                trailing: Text(
                  "12:00 PM",
                  style: Secondary.bodySmall,
                ))));
  }
}
