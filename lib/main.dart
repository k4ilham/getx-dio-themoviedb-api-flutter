import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modules/upcoming_movie/upcoming_movie_binding.dart';
import 'modules/upcoming_movie/upcoming_movie_page.dart';
import 'routes/app_pages.dart';
import 'themes/colors_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeColor().themeData,
      home: UpcomingMoviePage(),
      initialBinding: UpcomingMovieBinding(),
      getPages: AppPages.pages,
    );
  }
}
