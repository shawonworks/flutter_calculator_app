import 'package:calculator_app/Custom/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var userInput = "";
  var result = "";

  //=-=-=-=-=-=-=-=-=-=-=-=-This is a equal press package logic=-=-=-=-=-=-=-=-=-=-=-=//
  void egualPress() {
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll("x", "*");
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    result = eval.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        userInput.toString(),
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Text(
                      result.toString(),
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            ///////////This is expanded widget
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomButton(
                        title: "AC",
                        onTap: () {
                          userInput = "";
                          result = "";
                          setState(() {});
                        },
                      ),
                      CustomButton(
                        title: "+/-",
                        onTap: () {
                          userInput += "+/-";
                          setState(() {});
                        },
                      ),
                      CustomButton(
                        title: "%",
                        onTap: () {
                          userInput += "%";
                          setState(() {});
                        },
                      ),
                      CustomButton(
                        title: "/",
                        onTap: () {
                          userInput += "/";
                          setState(() {});
                        },
                        color: Colors.amber,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomButton(
                        title: "7",
                        onTap: () {
                          userInput += "7";
                          setState(() {});
                        },
                      ),
                      CustomButton(
                        title: "8",
                        onTap: () {
                          userInput += "8";
                          setState(() {});
                        },
                      ),
                      CustomButton(
                        title: "0",
                        onTap: () {
                          userInput += "0";
                          setState(() {});
                        },
                      ),
                      CustomButton(
                        title: "x",
                        onTap: () {
                          userInput += "x";
                          setState(() {});
                        },
                        color: Colors.amber,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomButton(
                        title: "4",
                        onTap: () {
                          userInput += "4";
                          setState(() {});
                        },
                      ),
                      CustomButton(
                        title: "5",
                        onTap: () {
                          userInput += "5";
                          setState(() {});
                        },
                      ),
                      CustomButton(
                        title: "6",
                        onTap: () {
                          userInput += "6";
                          setState(() {});
                        },
                      ),
                      CustomButton(
                        title: "-",
                        onTap: () {
                          userInput += "-";
                          setState(() {});
                        },
                        color: Colors.amber,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomButton(
                        title: "1",
                        onTap: () {
                          userInput += "1";
                          setState(() {});
                        },
                      ),
                      CustomButton(
                        title: "2",
                        onTap: () {
                          userInput += "2";
                          setState(() {});
                        },
                      ),
                      CustomButton(
                        title: "3",
                        onTap: () {
                          userInput += "3";
                          setState(() {});
                        },
                      ),
                      CustomButton(
                        title: "+",
                        onTap: () {
                          userInput += "+";
                          setState(() {});
                        },
                        color: Colors.amber,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomButton(
                        title: "0",
                        onTap: () {
                          userInput += "1";
                          setState(() {});
                        },
                      ),
                      CustomButton(
                        title: "-",
                        onTap: () {
                          userInput += "-";
                          setState(() {});
                        },
                      ),
                      CustomButton(
                        title: "DEL",
                        onTap: () {
                          userInput = userInput.substring(
                            0,
                            userInput.length - 1,
                          );
                          setState(() {});
                        },
                      ),
                      CustomButton(
                        title: "=",
                        onTap: () {
                          egualPress();
                          setState(() {});
                        },
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
