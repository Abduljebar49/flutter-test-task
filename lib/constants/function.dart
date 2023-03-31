import 'dart:math';

randomNumberGenerator() {
  Random random = Random();
  return random.nextInt(0xffffffff);
}

getTextColor(var bgColor) {
  return -1 * (0xFF - bgColor);
}
