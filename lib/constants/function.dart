import 'dart:math';

randomNumberGenerator() {
  Random random = Random();
  return random.nextInt(0xffffffff);
}

getTextColor(var bgColor) {
  print((0xff - bgColor).toString());
  return -1 * (0xFF - bgColor);
}
