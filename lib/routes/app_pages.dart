import 'package:get/get.dart';

import '../modules/movie_details/movie_details_binding.dart';
import '../modules/movie_details/movie_details_page.dart';
import '../modules/upcoming_movie/upcoming_movie_binding.dart';
import '../modules/upcoming_movie/upcoming_movie_page.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.upcomingMovie,
      page: () => UpcomingMoviePage(),
      binding: UpcomingMovieBinding(),
    ),
    GetPage(
      name: AppRoutes.movieDetails,
      page: () => MovieDetailsPage(),
      binding: MovieDetailsBinding(),
    ),
  ];
}
