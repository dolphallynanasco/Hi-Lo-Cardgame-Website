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
                top: 25,
                left: 1060,
                child: Image.asset(
                  'assets/$guessed_card5.png',
                  width: 120,
                  height: 250,
                ),
              ),
              Positioned(
                top: 25,
                left: 855,
                child: Image.asset(
                  'assets/$guessed_card4.png',
                  width: 120,
                  height: 250,
                ),
              ),
              Positioned(
                top: 25,
                left: 640,
                child: Image.asset(
                  'assets/$guessed_card3.png',
                  width: 120,
                  height: 250,
                ),
              ),
              Positioned(
                top: 25,
                left: 420,
                child: Image.asset(
                  'assets/$guessed_card2.png',
                  width: 120,
                  height: 250,
                ),
              ),
              Positioned(
                top: 25,
                left: 200,
                child: Image.asset(
                  'assets/$guessed_card1.png',
                  width: 120,
                  height: 250,
                ),
              ),
              Positioned(
                bottom: 130,
                left: 600,
                child: Image.asset(
                  'assets/$guessed_card1.png',
                  width: 200,
                  height: 280,
                ),
              ),
              Positioned(
                bottom: 20,
                left: 200,
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
                      primary: Colors.red,
                      padding: EdgeInsets.fromLTRB(47, 50, 47, 50)),
                  child: Text(
                    'HIGH',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 1050,
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
                      primary: Color.fromARGB(255, 14, 202, 39),
                      padding: EdgeInsets.fromLTRB(50, 50, 50, 48)),
                  child: Text(
                    'LOW',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                  bottom: 20,
                  left: 635,
                  child: Getpicture(
                    callback: callback,
                  )),
              Positioned(
                  top: 15,
                  left: 655,
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
            padding: const EdgeInsets.fromLTRB(40, 47, 40, 47)),
        child: Text(
          'REVEAL',
          textAlign: TextAlign.center,
        ));
  }
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
                'GAMEOVER.png',
                width: 600,
                height: 500,
              )),
          Positioned(
              left: 928,
              bottom: 280,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                style: ButtonStyle(
                    maximumSize: MaterialStateProperty.all(Size(200, 150)),
                    textStyle: MaterialStateProperty.all(TextStyle(
                      fontSize: 30,
                    )),
                    elevation: MaterialStateProperty.all<double>(20.0),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(184, 218, 165, 32))),
                child: Text('Try Again'),
              )),
          Positioned(
              left: 970,
              bottom: 180,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Menu()));
                },
                style: ButtonStyle(
                    maximumSize: MaterialStateProperty.all(Size(200, 150)),
                    textStyle: MaterialStateProperty.all(TextStyle(
                      fontSize: 30,
                    )),
                    elevation: MaterialStateProperty.all<double>(20.0),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 161, 7, 7))),
                child: Text('Exit'),
              ))
        ],
      ),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
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
              left: 355,
              bottom: 200,
              child: Image.asset(
                'assets/hi-lo_cardgame.png',
                width: 700,
                height: 600,
              )),
          Positioned(
              left: 655,
              bottom: 230,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                style: ButtonStyle(
                    maximumSize: MaterialStateProperty.all(Size(200, 150)),
                    textStyle: MaterialStateProperty.all(TextStyle(
                      fontSize: 30,
                    )),
                    elevation: MaterialStateProperty.all<double>(20.0),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(184, 218, 165, 32))),
                child: Text('Start'),
              )),
          Positioned(
              left: 605,
              bottom: 90,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Howtoplay()));
                },
                style: ButtonStyle(
                    maximumSize: MaterialStateProperty.all(Size(200, 150)),
                    textStyle: MaterialStateProperty.all(TextStyle(
                      fontSize: 30,
                    )),
                    elevation: MaterialStateProperty.all<double>(20.0),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(184, 218, 165, 32))),
                child: Text('How To Play'),
              ))
        ],
      ),
    );
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Menu()));
                        },
                        style: ButtonStyle(
                            maximumSize:
                                MaterialStateProperty.all(Size(200, 150)),
                            textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 30,
                            )),
                            elevation: MaterialStateProperty.all<double>(20.0),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(184, 218, 165, 32))),
                        child: Text('Back'),
                      )),
                  Positioned(
                    left: 190,
                    bottom: 230,
                    child: SingleChildScrollView(
                        child: Column(
                      children: const [
                        Text('Instructions:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'IndieFlower',
                              fontSize: 30,
                              color: Color.fromARGB(255, 253, 250, 250),
                            )),
                        Text(' ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'IndieFlower',
                              fontSize: 30,
                              color: Color.fromARGB(255, 252, 252, 252),
                            )),
                        Text(
                            'To play the game, click the reveal button first to reveal the first card,',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'IndieFlower',
                              fontSize: 30,
                              color: Color.fromARGB(255, 252, 252, 252),
                            )),
                        Text(
                            'After that, you can choose between HIGH or LOW to guess the next card,',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'IndieFlower',
                              fontSize: 30,
                              color: Color.fromARGB(255, 252, 252, 252),
                            )),
                        Text(
                            'Click the reveal button again and repeat the steps,',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'IndieFlower',
                              fontSize: 30,
                              color: Color.fromARGB(255, 252, 252, 252),
                            )),
                        Text(
                            'Just click REVEAL, choose between HIGH or LOW then click REVEAL again.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'IndieFlower',
                              fontSize: 30,
                              color: Color.fromARGB(255, 252, 252, 252),
                            )),
                        Text(' ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'IndieFlower',
                              fontSize: 30,
                              color: Color.fromARGB(255, 252, 252, 252),
                            )),
                        Text(
                            'Clicking the LOW button before or after clicking the REVEAL button',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'IndieFlower',
                              fontSize: 30,
                              color: Color.fromARGB(255, 252, 252, 252),
                            )),
                        Text(' will be an automatic gameover.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'IndieFlower',
                              fontSize: 30,
                              color: Color.fromARGB(255, 252, 252, 252),
                            )),
                      ],
                    )),
                  )
                ]))));
  }
}
