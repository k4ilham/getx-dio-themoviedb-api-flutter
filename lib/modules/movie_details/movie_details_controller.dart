import 'package:get/get.dart';

import '../../apis/movie_api.dart';
import '../../models/movie_details_model.dart';

class MovieDetailsController extends GetxController {
  int movieId = Get.arguments[0];
  MovieApi movieApi = MovieApi();

  bool isLoading = true;
  List<MovieDetailsModel> movieData = [];

  @override
  void onInit() {
    super.onInit();
    fetchMovieDetails();
  }

  void fetchMovieDetails() async {
    var response = await movieApi.getMovieDetails(movieId: movieId);
    if (response != null) {
      movieData.add(MovieDetailsModel.fromMap(response));
      isLoading = false;
      update();
    }
  }
}
