import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyc_ride/asset_images.dart';
import 'package:fyc_ride/colors.dart';
import 'package:fyc_ride/screens/search_location.dart';
import 'package:fyc_ride/util/data.dart';
import 'package:fyc_ride/util/typo.dart';
import 'package:fyc_ride/util/widgets.dart';
import 'package:gap/gap.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration:
          BoxDecoration
            (gradient: LinearGradient(
              colors: bgLinear2,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Scaffold(
        backgroundColor: Color.fromARGB(55, 15, 20, 23),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: DrawerButton(),
          actions: [
            IconButton(
              icon: const Icon(CupertinoIcons.bell),
              //icon: const Icon(Icons.notifications_outlined),
              tooltip: 'Notifications',
              onPressed: () {},
            ),
            CircleAvatar(),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome To Fyc Ridess',
                      style: titleBigw,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 18),
                      child: Image.asset(banner),
                    ),
                    Text("  Avaliable Near by Rides", style: Secondary.titleMedium),
                  ],
                ),
              ),
              SizedBox(
                height: 140,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                  shrinkWrap: true,
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => SizedBox(
                    width: 170,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            width: 158,
                            height: 90,
                            alignment: Alignment.bottomCenter,
                            padding: EdgeInsets.only(bottom: 15),
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromRGBO(11, 14, 16, 0.5), // shadow color
                                      blurRadius: 4, // shadow radius
                                      offset: Offset(1.1, 2.20), // shadow offset
                                      spreadRadius: 0.03, // The amount the box should be inflated prior to applying the blur
                                      blurStyle: BlurStyle.normal // set blur style
                                      ),
                                ],
                                gradient:
                                    LinearGradient(colors: const
                                    [Color.fromRGBO(18, 18, 18, 1),
                                      Color.fromRGBO(21, 21, 21, 1)]),
                                border: GradientBoxBorder(
                                  gradient: LinearGradient(
                                    end: Alignment.bottomRight,
                                    colors: carGradient3,
                                  ),
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(12))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  "Sedan",
                                  style: Poppins.titleSmall,
                                ),
                                DecoratedBox(
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                    color: Color.fromRGBO(255, 255, 255, 0.05),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    child: Text(
                                      "4+1 Person",
                                      style: Poppins.bodyvSmall,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                            excar,
                            width: 120,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14, top: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Current Location", style: Secondary.titleMedium),
                    Gap(10),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.asset(map),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: FilledButton.icon(
                            onPressed: () => Navigator.push(
                                context, MaterialPageRoute
                              (builder: (context) => const EnterLoation())),
                            style: FilledButton.styleFrom(
                                alignment: Alignment.centerLeft,
                                fixedSize: Size.fromWidth(size.width),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                backgroundColor: Color.fromRGBO(6, 6, 6, 0.95)),
                            label: Text(
                              "Where You Want To Go ?",
                              style: Poppins.titleSmalls,
                            ),
                            icon: Container(
                                alignment: Alignment.centerRight,
                                // margin: EdgeInsets.only(left: size.width * .26),
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(shape: BoxShape.circle,
                                    gradient: LinearGradient(colors: gradientr)),
                                child: Icon(
                                  CupertinoIcons.search,
                                  color: Colors.white,
                                  size: 24,
                                )),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Padding(
          padding: EdgeInsets.only(right: 10, bottom: size.height * .14),
          child: FloatingActionButton(
            onPressed: () {},
            shape: CircleBorder(),
            backgroundColor: Color.fromRGBO(6, 6, 6, 0.95),
            child: Icon(Icons.my_location_rounded).textGradientr,
          ),
        ),
      ),
    );
  }
}
