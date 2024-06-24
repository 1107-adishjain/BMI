import 'package:bmi/screens/results_pge.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusable_Card.dart';
import '../components/icon_item.dart';
import '../components/constants.dart';
import '../components/Rounded_Icon.dart';
import '../components/bottom_container.dart';
import 'package:bmi/functionality/functions.dart';
enum Gender {
  male,
  female,
}

// ignore: must_be_immutable
class Maincnt extends StatefulWidget {
  Maincnt({super.key});

  @override
  State<Maincnt> createState() => _MaincntState();
}

class _MaincntState extends State<Maincnt> {
  int weight = 60;
  int age = 0;
  // ignore: non_constant_identifier_names
  Gender? Selectedgender;
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:const Color.fromARGB(255, 10, 13, 34),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusablecard(
                    Colour: (Selectedgender == Gender.male)
                        ? kcolorofallboxes
                        : kinactivecolor,
                    Containerchild:
                        const IconItem("MALE", FontAwesomeIcons.mars),
                    Onpress: () {
                      setState(() {
                        Selectedgender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: Reusablecard(
                    Colour: Selectedgender == Gender.female
                        ? kcolorofallboxes
                        : kinactivecolor,
                    Containerchild:
                        const IconItem("FEMALE", FontAwesomeIcons.venus),
                    Onpress: () {
                      setState(() {
                        Selectedgender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reusablecard(
              Colour: kcolorofallboxes,
              Containerchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "HEIGHT",
                    style: styling,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: knumberstyling,
                      ),
                      const Text(
                        "cm",
                        style: styling,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      overlayColor: koverlaycolor,
                      inactiveTrackColor: inactivetrackcolorofslider,
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 10.0),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 22.0),
                      thumbColor: kbottomcontainercolor,
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 260.0,
                      onChanged: (double newvalue) {
                        setState(() {
                          height = newvalue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusablecard(
                    Colour: kcolorofallboxes,
                    Containerchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "WEIGHT",
                          style: styling,
                        ),
                        Text(
                          weight.toString(),
                          style: knumberstyling,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              setting: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              setting: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusablecard(
                    Colour: kcolorofallboxes,
                    Containerchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "AGE",
                          style: styling,
                        ),
                        Text(
                          age.toString(),
                          style: knumberstyling,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              setting: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              setting: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            label: "CALCULATE YOUR BMI",
            onpressed: () {
            calculator calc=calculator(height, weight);
            
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiresult: calc.calcualteBMI(),
                    reuslttext: calc.getResult(),
                    interpreation: calc.geinterpretartion(),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
