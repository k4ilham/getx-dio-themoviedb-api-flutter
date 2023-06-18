import 'package:get/get.dart';

import 'upcoming_movie_controller.dart';

class UpcomingMovieBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpcomingMovieController());
  }
}
