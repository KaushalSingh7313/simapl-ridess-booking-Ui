import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fyc_ride/screens/get_started.dart';
import 'package:fyc_ride/util/data.dart';
import 'theme.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    data = MediaQuery.of(context);
    size = data.size;
    // final brightness = View.of(context).platformDispatcher.platformBrightness;

    // // Retrieves the default theme for the platform
    // //TextTheme textTheme = Theme.of(context).textTheme;

    // // Use with Google Fonts package to use downloadable fonts
    // TextTheme textTheme = createTextTheme(context, "Poppins", "Raleway");

    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: MaterialTheme().dark(),
        // MaterialTheme().light(),
        darkTheme: MaterialTheme().dark(),
        highContrastTheme: MaterialTheme().darkHighContrast(),
        //   highContrastTheme: MaterialTheme().lightHighContrast(),
        highContrastDarkTheme: MaterialTheme().darkHighContrast(),
        home: const GetStarted());
  }
}