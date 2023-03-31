import 'package:flutter/material.dart';
import 'package:test_task/constants/function.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var text = "Hello world";
  late Color backgroundColor;
  late int randomNumber;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    backgroundColor = getRandomColor();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          setState(() {});
        },
        child: Scaffold(
            backgroundColor: getRandomColor(),
            body: Center(
              child: Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            )),
      ),
    );
  }

  Color getRandomColor() {
    randomNumber = randomNumberGenerator();
    backgroundColor = Color(randomNumber);
    print(randomNumber);

    return backgroundColor;
  }

  Color getInvertedTextColor() {
    print(randomNumber);
    return Color(getTextColor(randomNumber));
  }
}
