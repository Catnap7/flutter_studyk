import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Category {
  drama,
  movie,
  hanbok,
  music,

}

final selectedCategoryProvider = StateProvider<String>((ref) {
  return 'drama';
});