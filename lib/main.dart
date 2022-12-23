import 'package:clothes_lab2_mis/clothes_answer.dart';
import 'package:clothes_lab2_mis/clothes_question.dart';
import 'package:flutter/material.dart';

void main() => runApp(ClothesApp());

class ClothesApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ClothesAppState();
  }

}

class _ClothesAppState extends State<ClothesApp> {
  void _iWasTapped() {
    setState(() {
      _questionIndex += 1;
    });
  }

  var questions = [
    {"question": "Select top:",
      "answer": ["T-shirt",
        "Long sleeves shirt",
        "Sleeveless",
        "Dress",
      ],
    },
    {"question": "Select bottom:",
      "answer": ["Jeans",
        "Dress pants",
        "Long skirt",
        "Short skirt",
        "None",
      ],
    },
    {"question": "Select shoes:",
      "answer": ["Ankle boots",
        "Sneakers",
        "Knee-high boots",
        "Sandals",
      ],
    },
    {"question": "Select jacket:",
      "answer": ["Blazer",
        "Sweater",
        "Leather jacket",
        "Winter jacket",
        "None",
      ],
    },
    {"question": "Select accessories:",
      "answer": ["Backpack",
        "Purse",
        "Sunglasses",
        "Hat",
        "Scarf",
      ],
    },
  ];
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Clothes App",
      home: Scaffold(
        appBar: AppBar(title: Text("My Clothes App")),
        body: Column(
          children: [
            ClothesQuestion(questions[_questionIndex]["question"] as String),
            ...(questions[_questionIndex]["answer"] as List<String>).map((answer) {
              return ClothesAnswer(_iWasTapped, answer);
            }),
          ],
        ),
      ),
    );
  }
}