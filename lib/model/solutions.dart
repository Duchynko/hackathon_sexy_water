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
      fullDescription: "By washing only full loads of clothes, you can save up to 140 liters of water per cycle. This way, you can also reduce your CO2 emitions by 66 kilograms per year.",
      image: "assets/images/washing-machine.svg",
      message: "Try to wash your clothes tomorrow morning at 07:30.",
      co2: 132,
      energy: 600,
      money: 162,
      water: 30000,
      secondCo2: 66,
      secondWater: 15000,
      secondEnergy: 300,
      secondMoney: 81,
      firstTable: "Full cycle",
      secondTable: "Half cycle"
    ),
    Solution(
      name: "Dishwasher",
      background: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: colors,
      ),
      description: "Run dishwasher when full instead of half full",
      fullDescription: "By washing dishes when a dishwasher is fully loaded you can save up to 55 liters of water per cycle.",
      image: "assets/images/dishwasher.svg",
      message: "Try to wash your dishes tonight at 22:30.",
      co2: 198,
      energy: 900,
      money: 253,
      water: 45000,
      secondCo2: 99,
      secondWater: 27500,
      secondEnergy: 450,
      secondMoney: 127,
      firstTable: "Full cycle",
      secondTable: "Half cycle"
    ),
    Solution(
      name: "Peak hours",
      background: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: colors
      ),
      description: "Try to avoid them, save money and reduce CO2 emissions at the same time.",
      fullDescription: "Peak hours are the least environment friendly. Try using water outside of these hours to reduce CO2 emissions.",
      image: "assets/images/peak.svg",
      message: "Peek hours occur at 9:30-11:00 & 12:30-15:00 & 19:00-22:30",
      co2: 636,
      energy: 2445,
      money: 715,
      water: 50844,
      secondCo2: 355,
      secondWater: 50844,
      secondEnergy: 2445,
      secondMoney: 670,
      firstTable: "Off-peak hours (07:30",
      secondTable: "Peak hours (22:30)"
    ),
    Solution(
      name: "Shower head",
      background: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: colors,
      ),
      description: "You can save up to 80% of water by installing water efficient shower head",
      fullDescription: "Save water by replacing the aerators on your bathroom and kitchen sink faucets. By changing a single aerator at little cost, you can save anywhere between 50 to 80 percent of your water consumption.",
      image: "assets/images/shower.svg",
      message: "I found some aerators at Pricerunner.dk for 156dkk",
      co2: 20,
      energy: 474,
      money: 128,
      water: 20075,
      secondCo2: 0,
      secondWater: 6205,
      secondEnergy: 147,
      secondMoney: 40,
      firstTable: "Water-efficient",
      secondTable: "Regular"
    ),
    Solution(
      name: "Efficient pump",
      background: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: colors,
      ),
      description: "Save even more energy by replacing your old water pump for free.",
      fullDescription: "By installing modern water pump you can prevent failure, be even more energy eficient and track your water consumption without additional hardware.",
      image: "assets/images/pump.svg",
      message: "Grundfos can exchange your old waterpump for the smart one.",
      co2: 20,
      energy: 10,
      money: 340,
      water: 40,
      secondCo2: 0,
      secondWater: 0,
      secondEnergy: 0,
      secondMoney: 0,
      firstTable: "Modern pump",
      secondTable: "Old pump"
    ),
  ];
}