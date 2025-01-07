import 'dart:ui';

Brightness getBrightness(Color color) {
  double brightness = (color.r * 299 + color.g * 587 + color.b * 114) / 1000;
  return brightness > 180 ? Brightness.light : Brightness.dark;
}
