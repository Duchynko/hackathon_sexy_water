import 'package:sexy_flutter/model/solution.dart';
import 'package:flutter/material.dart';

class Solutions {
  static List<Color> colors = [Color(0xFF72A1E4), Color(0xFF11497c)];
  static List<Solution> solutions = [
    Solution(
      name: "Washing Machine",
      background: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: colors,
      ),
      description: "Wash only full loads of clothes",
      fullDescription: "By washing only full loads of clothes you can save up to 140 liters of water per load. You can also reduce your CO2 emitions by ___ grams by using washing machine outside of peek hours.",
      image: "assets/images/washing-machine.svg",
      // bottomImage: "assets/images/washing-machine.svg",
      co2: 000.1,
      energy: 000.1,
      money: 000.1,
      water: 105.0,
    ),
    Solution(
      name: "Washing dishes",
      background: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: colors,
      ),
      description: "Run dishwasher when full instead of half full",
      fullDescription: "By washing dishes when a dishwasher is fully loaded you can save up to 55 liters of water per load.",
      image: "assets/images/water.svg",
      // bottomImage: "assets/images/washing-machine.svg",
      co2: 000.1,
      energy: 000.1,
      money: 000.1,
      water: 55.0,
    ),
    Solution(
      name: "Peak hours",
      background: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: colors
      ),
      description: "Have you heard about peak hours? Try to avoid them and save money and reduce CO2 emissions at the same time.",
      fullDescription: "Peak hours will always be the most expsensive time of day to use electricity. Peak hours are from 9:30-11:00 & 12:30-15:00 & 19:00 - 22:30. Try using water outside of these times to save money and reduce CO2 emissions.",
      image: "assets/images/washing-machine.svg",
      // bottomImage: "assets/images/washing-machine.svg",
      co2: 25.4,
      energy: 15.2,
      money: 343.0,
      water: 44.0,
    ),
    Solution(
      name: "Washing clothes",
      background: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: colors,
      ),
      description: "Only use washing machine when it's full. Did you know that...",
      fullDescription: "By washing dishes when a dishwasher is fully loaded you can save up to 55 liters of water per load. We recommned using a dishwasher between __pm to __pm to reduce your CO2 emitions by ___ grams.",
      image: "assets/images/washing-machine.svg",
      // bottomImage: "assets/images/washing-machine.svg",
      co2: 25.4,
      energy: 15.2,
      money: 343.0,
      water: 44.0,
    ),Solution(
      name: "Low flush toilet",
      background: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: colors,
      ),
      description: "Try to use low-flush toilet as much as possible. Did you know...",
      fullDescription: "By washing dishes when a dishwasher is fully loaded you can save up to 55 liters of water per load. We recommned using a dishwasher between __pm to __pm to reduce your CO2 emitions by ___ grams.",
      image: "assets/images/washing-machine.svg",
      // bottomImage: "assets/images/washing-machine.svg",
      co2: 25.4,
      energy: 15.2,
      money: 343.0,
      water: 44.0,
    ),
  ];
}