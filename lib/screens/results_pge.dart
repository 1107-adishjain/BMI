import 'package:bmi/components/bottom_container.dart';
import 'package:bmi/components/constants.dart';
import 'package:bmi/components/reusable_Card.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.bmiresult,
      required this.reuslttext,
      required this.interpreation});
  final String bmiresult;
  final String reuslttext;
  final String interpreation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.spaceEvenly, //evenly space krdega saare child ko
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Your Result",
                style: ktitleofresultpagestyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Reusablecard(
                Colour: kcolorofallboxes,
                Containerchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      reuslttext,
                      style: const TextStyle(
                          color: Color(0xFF24D876),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      bmiresult,
                      style: kanswerstyling,
                    ),
                    const Text(
                      "NORMAL BMI RANGE:",
                      style: styling,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "18.5 - 25 ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "kg/m2",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Text(
                      interpreation,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
                label: "RE-CALCULATE YOUR BMI",
                onpressed: () {
                  Navigator.pop(context);
                }),
          )
        ],
      ),
    );
  }
}
