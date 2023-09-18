class Drama {
  Drama({
    required this.korTitle,
    required this.engTitle,
    required this.korDescription,
    required this.engDescription,
    this.imgPath,
  });

  final String korTitle;
  final String engTitle;
  final String korDescription;
  final String engDescription;
  final String? imgPath;

  final _Drama _drama = _Drama();
}
