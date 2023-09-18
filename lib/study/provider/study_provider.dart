import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Category {
  drama,
  food,
  movie,
  hanbok,
  hangeul,
  music,
  landmark,
  webtoon,
}

final selectedCategoryProvider = StateProvider<String>((ref) {
  return 'drama';
});