// ignore_for_file: non_constant_identifier_names
// ignore_for_file: avoid_print
// ignore_for_file: prefer_const_constructors
// ignore_for_file:: must_be_immutable

import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MaterialApp(
    home: Menu(),
  ));
}

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class Gameover extends StatefulWidget {
  const Gameover({Key? key}) : super(key: key);

  @override
  State<Gameover> createState() => MenuState();
}

class MenuState extends State<Gameover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('menu.jpg'), fit: BoxFit.cover)),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.black12.withOpacity(0.0),
                  Colors.black87.withOpacity(0.6)
                ], begin: Alignment.center),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 1366.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: const [Colors.black12, Colors.black87])),
                  )),
            ),
          ),
          Positioned(
              left: 700,
              bottom: 200,
              child: Image.asset(
                'gameover.png',
                width: 600,
                height: 500,
              )),
          Positioned(
              left: 800,
              bottom: 150,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(184, 218, 165, 32),
                      padding: EdgeInsets.fromLTRB(10, 13, 10, 13)),
                  child: Text('Try Again',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromARGB(255, 255, 255, 255),
                      )))),
          Positioned(
              left: 1070,
              bottom: 150,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Menu()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(184, 218, 165, 32),
                      padding: EdgeInsets.fromLTRB(10, 13, 10, 13)),
                  child: Text('Exit',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromARGB(255, 255, 255, 255),
                      )))),
        ],
      ),
    );
  }
}

class Getpicture extends StatelessWidget {
  int selector = 0;

  final Function callback;
  Getpicture({
    Key? key,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          selector = Random().nextInt(52);
          callback(selector);
        },
        style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(184, 218, 165, 32),
            padding: EdgeInsets.fromLTRB(10, 13, 10, 13)),
        child: Text('REVEAL',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              color: Color.fromARGB(255, 252, 252, 252),
            )));
  }
}

ResponsiveWidget({required Column mobile, required Column desktop}) {}

class Howtoplay extends StatelessWidget {
  const Howtoplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('backgroundhelp.jpg'),
                        fit: BoxFit.cover)),
                child: Stack(children: [
                  Positioned(
                      left: 650,
                      bottom: 90,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Menu()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(184, 218, 165, 32),
                              padding: EdgeInsets.fromLTRB(10, 13, 10, 13)),
                          child: Text('Back',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 40,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )))),
                  Positioned(
                    left: 190,
                    bottom: 230,
                    child: SingleChildScrollView(
                        child: Column(
                      children: const [
                        Text('Instructions:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 253, 250, 250),
                            )),
                        Text(' ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 252, 252, 252),
                            )),
                        Text(
                            'To play the game, click the reveal button first to reveal the first card,',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 252, 252, 252),
                            )),
                        Text(
                            'After that, you can choose between HIGH or LOW to guess the next card,',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 252, 252, 252),
                            )),
                        Text(
                            'Click the reveal button again and repeat the steps,',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 252, 252, 252),
                            )),
                        Text(
                            'Just click REVEAL, choose between HIGH or LOW then click REVEAL again.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 252, 252, 252),
                            )),
                        Text(' ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 252, 252, 252),
                            )),
                        Text(
                            'Clicking the LOW button before or after clicking the REVEAL button',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 252, 252, 252),
                            )),
                        Text(' will be an automatic gameover.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 252, 252, 252),
                            )),
                      ],
                    )),
                  )
                ]))));
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  List<int> lastguesses = [];
  final String str = ('Your number is  ');
  int random = 0;
  int previous = 0;
  int score = 0;
  int guessed_card1 = 53;
  int guessed_card2 = 53;
  int guessed_card3 = 53;
  int guessed_card4 = 53;
  int guessed_card5 = 53;
  int future_value = 0;
  int previous_value = 0;
  callback(selector) async {
    await Future.delayed(const Duration(seconds: 2), () {
      previous = random;
      guessed_card1 = previous;
      setState(() {
        random = selector;
      });
    });
  }

  callback1(previousval) async {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        guessed_card2 = previousval;
      });
    });
  }

  callback2() async {
    await Future.delayed(const Duration(seconds: 1), () async {
      setState(() {
        guessed_card3 = guessed_card2;
      });
    });
  }

  callback3() async {
    await Future.delayed(const Duration(seconds: 1), () async {
      setState(() {
        guessed_card4 = guessed_card3;
      });
    });
  }

  callback4(previousval) {
    Future.delayed(const Duration(seconds: 0), () async {
      guessed_card5 = previousval;

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('backgroundmiddle.jpg'),
                  fit: BoxFit.cover)),
          child: Stack(
            children: [
              Positioned(
                bottom: 5,
                left: 1025,
                child: Image.asset(
                  'assets/$guessed_card5.png',
                  width: 120,
                  height: 250,
                ),
              ),
              Positioned(
                bottom: 5,
                left: 825,
                child: Image.asset(
                  'assets/$guessed_card4.png',
                  width: 120,
                  height: 250,
                ),
              ),
              Positioned(
                bottom: 5,
                left: 625,
                child: Image.asset(
                  'assets/$guessed_card3.png',
                  width: 120,
                  height: 250,
                ),
              ),
              Positioned(
                bottom: 5,
                left: 425,
                child: Image.asset(
                  'assets/$guessed_card2.png',
                  width: 120,
                  height: 250,
                ),
              ),
              Positioned(
                bottom: 5,
                left: 225,
                child: Image.asset(
                  'assets/$guessed_card1.png',
                  width: 120,
                  height: 250,
                ),
              ),
              Positioned(
                top: 50,
                left: 600,
                child: Image.asset(
                  'assets/$guessed_card1.png',
                  width: 170,
                  height: 300,
                ),
              ),
              Positioned(
                bottom: 250,
                left: 360,
                child: ElevatedButton(
                  onPressed: () {
                    List<int> cardValues = [
                      1,
                      1,
                      1,
                      1,
                      2,
                      2,
                      2,
                      2,
                      3,
                      3,
                      3,
                      3,
                      4,
                      4,
                      4,
                      4,
                      5,
                      5,
                      5,
                      5,
                      6,
                      6,
                      6,
                      6,
                      7,
                      7,
                      7,
                      7,
                      8,
                      8,
                      8,
                      8,
                      9,
                      9,
                      9,
                      9,
                      10,
                      10,
                      10,
                      10,
                      11,
                      11,
                      11,
                      11,
                      12,
                      12,
                      12,
                      12,
                      13,
                      13,
                      13,
                      13
                    ];
                    future_value = cardValues.elementAt(random);
                    previous_value = cardValues.elementAt(previous);

                    if (previous_value <= future_value) {
                      print('$previous_value,$future_value');
                      score++;
                      print('Score :$score');
                      Future.delayed(const Duration(seconds: 1), () {
                        callback3();
                        callback2();
                        setState(() {
                          callback1(previous);
                        });
                        callback4(guessed_card4);
                      });
                    } else {
                      setState(() {
                        score = 0;
                        random = 0;
                        previous = 0;
                        previous_value = 0;
                        future_value = 0;
                        guessed_card1 = 53;
                        guessed_card2 = 53;
                        guessed_card3 = 53;
                        guessed_card4 = 53;
                        guessed_card5 = 53;
                      });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Gameover()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(184, 218, 165, 32),
                      padding: EdgeInsets.fromLTRB(10, 13, 10, 13)),
                  child: Text('HIGH',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromARGB(255, 252, 252, 252),
                      )),
                ),
              ),
              Positioned(
                bottom: 250,
                left: 870,
                child: ElevatedButton(
                  onPressed: () {
                    List<int> cardValues = [
                      1,
                      1,
                      1,
                      1,
                      2,
                      2,
                      2,
                      2,
                      3,
                      3,
                      3,
                      3,
                      4,
                      4,
                      4,
                      4,
                      5,
                      5,
                      5,
                      5,
                      6,
                      6,
                      6,
                      6,
                      7,
                      7,
                      7,
                      7,
                      8,
                      8,
                      8,
                      8,
                      9,
                      9,
                      9,
                      9,
                      10,
                      10,
                      10,
                      10,
                      11,
                      11,
                      11,
                      11,
                      12,
                      12,
                      12,
                      12,
                      13,
                      13,
                      13,
                      13
                    ];
                    future_value = cardValues.elementAt(random);
                    previous_value = cardValues.elementAt(previous);
                    if (previous_value > future_value) {
                      print('$previous_value,$future_value');

                      score++;
                      print('Score :$score');
                      Future.delayed(const Duration(seconds: 1), () {
                        callback3();
                        callback2();
                        setState(() {
                          callback1(previous);
                        });
                        callback4(guessed_card4);
                      });
                    } else {
                      setState(() {
                        score = 0;
                        random = 0;
                        previous_value = 0;
                        future_value = 0;
                        guessed_card1 = 53;
                        guessed_card2 = 53;
                        guessed_card3 = 53;
                        guessed_card4 = 53;
                        guessed_card5 = 53;
                      });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Gameover()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(184, 218, 165, 32),
                      padding: EdgeInsets.fromLTRB(10, 13, 10, 13)),
                  child: Text('LOW',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromARGB(255, 255, 255, 255),
                      )),
                ),
              ),
              Positioned(
                  bottom: 250,
                  left: 600,
                  child: Getpicture(
                    callback: callback,
                  )),
              Positioned(
                  top: 20,
                  left: 640,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(184, 218, 165, 32),
                      ),
                      child: Text(
                        'Score: $score',
                        style: TextStyle(
                            color: Color.fromARGB(184, 252, 251, 251)),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('backgroundfront.jpg'),
                    fit: BoxFit.cover)),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.black12.withOpacity(0.0),
                  Colors.black87.withOpacity(0.6)
                ], begin: Alignment.center),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 1366.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: const [Colors.black12, Colors.black87])),
                  )),
            ),
          ),
          Positioned(
              left: 205,
              bottom: 50,
              child: Image.asset(
                'assets/Hi-lo_cardgame.png',
                width: 1000,
                height: 900,
              )),
          Positioned(
              left: 505,
              bottom: 150,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(184, 218, 165, 32),
                      padding: EdgeInsets.fromLTRB(10, 13, 10, 13)),
                  child: Text('Start',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromARGB(255, 255, 255, 255),
                      )))),
          Positioned(
              left: 755,
              bottom: 150,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Howtoplay()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(184, 218, 165, 32),
                      padding: EdgeInsets.fromLTRB(10, 13, 10, 13)),
                  child: Text('How to Play',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromARGB(255, 255, 255, 255),
                      )))),
        ],
      ),
    );
  }
}
