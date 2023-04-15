import 'package:get/get.dart';

class FavController extends GetxController {
  RxList<int> favorites = RxList<int>([]);

  void addToFavorites(int id) {
    favorites.add(id);
  }

  void removeFromFavorites(int id) {
    favorites.remove(id);
  }

  bool isProductFavorite(int id) {
    return favorites.contains(id);
  }
}
