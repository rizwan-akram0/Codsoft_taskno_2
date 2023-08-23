import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPlus = false,
      isEqual = false,
      isMinus = false,
      isMul = false,
      isDiv = false,
      isPer = false;

  String num = '0';
  double num1 = 0;
  double num2 = 0;
  int result = 0;
  int size = 90;
  bool isPointAvailable = false;
  bool widgetVisible = false;

  void showWidget() {
    setState(() {
      widgetVisible = !widgetVisible;
      size = 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Calculator")),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 40,
              ),
              decoration: const BoxDecoration(
                  color: Color(0xFFdde6ed),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              alignment: Alignment.centerRight,
              constraints: const BoxConstraints(maxWidth: double.infinity),
              child: Column(
                children: [
                  const Spacer(),
                  if (num2 != 0) ...[
                    Text(
                      '$num2',
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                  if (!isEqual) ...[
                    Text(
                      num,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
          Row(
            children: [
              TextButton(
                style: TextButton.styleFrom(fixedSize: const Size(80, 42)),
                onPressed: () {
                  setState(() {
                    num1 = double.parse(num);
                    num2 = sqrt(num1);
                    num = '0';
                    isPer = true;
                  });
                },
                child: const Text(
                  "√",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(fixedSize: const Size(80, 40)),
                onPressed: () {
                  setState(() {
                    num2 = 3.14;
                    num = '0';
                    isPer = true;
                  });
                },
                child: const Text(
                  "π",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(fixedSize: const Size(80, 40)),
                onPressed: () {
                  setState(() {
                    num1 = double.parse(num);
                    num2 = num1 * num1;
                    num = '0';
                    isPer = true;
                  });
                },
                child: const Text(
                  "^",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(fixedSize: const Size(80, 40)),
                onPressed: () {},
                child: const Text(
                  "!",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
                ),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      showWidget();
                    });
                  },
                  child: const Icon(
                    Icons.arrow_drop_down,
                  ))
            ],
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: widgetVisible ? 100 : 0,
            child: Visibility(
              visible: widgetVisible,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                              fixedSize: const Size(90, 42)),
                          onPressed: () {},
                          child: const Text(
                            "DEG",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.normal),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              fixedSize: const Size(90, 42)),
                          onPressed: () {
                            setState(() {
                              num1 = double.parse(num);
                              num2 = sin(num1);
                              num = '0';
                              isPer = true;
                            });
                          },
                          child: const Text(
                            "sin",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.normal),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              fixedSize: const Size(80, 42)),
                          onPressed: () {
                            setState(() {
                              num1 = double.parse(num);
                              num2 = cos(num1);
                              num = '0';
                              isPer = true;
                            });
                          },
                          child: const Text(
                            "cos",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.normal),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              fixedSize: const Size(80, 42)),
                          onPressed: () {
                            setState(() {
                              num1 = double.parse(num);
                              num2 = tan(num1);
                              num = '0';
                              isPer = true;
                            });
                          },
                          child: const Text(
                            "tan",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                              fixedSize: const Size(90, 42)),
                          onPressed: () {
                            setState(() {
                              num1 = double.parse(num);
                              num2 = asin(num1);
                              num = '0';
                              isPer = true;
                            });
                          },
                          child: const Text(
                            "INV",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.normal),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              fixedSize: const Size(90, 42)),
                          onPressed: () {
                            setState(() {
                              num1 = double.parse(num);
                              num2 = e * num1;
                              num = '0';
                              isPer = true;
                            });
                          },
                          child: const Text(
                            "e",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.normal),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              fixedSize: const Size(80, 42)),
                          onPressed: () {
                            setState(() {
                              num1 = double.parse(num);
                              num2 = log(num1);
                              num = '0';
                              isPer = true;
                            });
                          },
                          child: const Text(
                            "ln",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.normal),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              fixedSize: const Size(80, 42)),
                          onPressed: () {
                            setState(() {
                              num1 = double.parse(num);
                              num2 = log10e * log(num1);
                              num = '0';
                              isPer = true;
                            });
                          },
                          child: const Text(
                            "log",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    num = '0';
                    num1 = 0;
                    num2 = 0;
                    isPointAvailable = false;
                    isDiv = false;
                    isMul = false;
                    isEqual = false;
                    isPer = false;
                    isMinus = false;
                    isPlus = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: const Color(0xFFe8dbfc),
                ),
                child: const Text(
                  "AC",
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    num = '0';
                    num1 = 0;
                    num2 = 0;
                    isPointAvailable = false;
                    isDiv = false;
                    isMul = false;
                    isEqual = false;
                    isPer = false;
                    isMinus = false;
                    isPlus = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: const Color(0xFFcce5fc),
                ),
                child: const Text(
                  "( )",
                  style: TextStyle(fontSize: 26.0),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    num1 = double.parse(num);
                    num2 = num1 / 100;
                    num = '0';
                    isEqual = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: const Color(0xFFcce5fc),
                ),
                child: const Icon(
                  CupertinoIcons.percent,
                  size: 30,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    num1 = double.parse(num);
                    num2 = num1 / num2;
                    num = '0';
                    isDiv = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: const Color(0xFFcce5fc),
                ),
                child: const Icon(
                  CupertinoIcons.divide,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (num == '0') {
                      num = '7';
                    } else if (num.length < 17) {
                      num = '${num}7';
                    }
                    if (isEqual) {
                      num1 = 0;
                      num2 = 0;
                    }
                    isEqual = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  "7",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (num == '0') {
                      num = '8';
                    } else if (num.length < 17) {
                      num = '${num}8';
                    }
                    if (isEqual) {
                      num1 = 0;
                      num2 = 0;
                    }
                    isEqual = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  "8",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (num == '0') {
                      num = '9';
                    } else if (num.length < 17) {
                      num = '${num}9';
                    }
                    if (isEqual) {
                      num1 = 0;
                      num2 = 0;
                    }
                    isEqual = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  "9",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    num1 = double.parse(num);
                    num2 = num1 * num2;
                    num = '0';
                    isMul = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: const Color(0xFFcce5fc),
                ),
                child: const Icon(
                  CupertinoIcons.multiply,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (num == '0') {
                      num = '4';
                    } else if (num.length < 17) {
                      num = '${num}4';
                    }
                    if (isEqual) {
                      num1 = 0;
                      num2 = 0;
                    }
                    isEqual = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  "4",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (num == '0') {
                      num = '5';
                    } else if (num.length < 17) {
                      num = '${num}5';
                    }
                    if (isEqual) {
                      num1 = 0;
                      num2 = 0;
                    }
                    isEqual = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  "5",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (num == '0') {
                      num = '6';
                    } else if (num.length < 17) {
                      num = '${num}6';
                    }
                    if (isEqual) {
                      num1 = 0;
                      num2 = 0;
                    }
                    isEqual = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  "6",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    num1 = double.parse(num);
                    num2 = num1 - num2;
                    num = '0';
                    isMinus = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: const Color(0xFFcce5fc),
                ),
                child: const Icon(
                  CupertinoIcons.minus,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (num == '0') {
                      num = '1';
                    } else if (num.length < 17) {
                      num = '${num}1';
                    }
                    if (isEqual) {
                      num1 = 0;
                      num2 = 0;
                    }
                    isEqual = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  "1",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (num == '0') {
                      num = '2';
                    } else if (num.length < 17) {
                      num = '${num}2';
                    }
                    if (isEqual) {
                      num1 = 0;
                      num2 = 0;
                    }
                    isEqual = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  "2",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (num == '0') {
                      num = '3';
                    } else if (num.length < 17) {
                      num = '${num}3';
                    }
                    if (isEqual) {
                      num1 = 0;
                      num2 = 0;
                    }
                    isEqual = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  "3",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    num1 = double.parse(num);
                    num2 = num1 + num2;
                    num = '0';
                    isPlus = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: const Color(0xFFcce5fc),
                ),
                child: const Icon(
                  CupertinoIcons.add,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (num != '0') {
                      num = '${num}0';
                    }
                    if (isEqual) {
                      num1 = 0;
                      num2 = 0;
                    }
                    isEqual = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  "0",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (!isPointAvailable) {
                      num = '$num.';
                      isPointAvailable = true;
                    }
                    if (isEqual) {
                      num1 = 0;
                      num2 = 0;
                    }
                    isEqual = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text(
                  ".",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (num.length > 1) {
                      num = num.substring(0, num.length - 1);
                    } else if (num.length == 1) {
                      num = '0';
                    }
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Icon(
                  Icons.backspace,
                  size: 30,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (isPlus) {
                      num1 = double.parse(num);
                      num2 = num1 + num2;
                      num = '0';
                      isPlus = false;
                      isEqual = true;
                    } else if (isMinus) {
                      num1 = double.parse(num);
                      num2 = num1 - num2;
                      num = '0';
                      isPlus = false;
                      isEqual = true;
                    } else if (isMul) {
                      num1 = double.parse(num);
                      num2 = num1 * num2;
                      num = '0';
                      isPlus = false;
                      isEqual = true;
                    } else if (isDiv) {
                      num1 = double.parse(num);
                      num2 = num1 / num2;
                      num = '0';
                      isPlus = false;
                      isEqual = true;
                    } else if (isPer) {
                      num1 = double.parse(num);
                      num2 = num1 % num2;
                      num = '0';
                      isPlus = false;
                      isEqual = true;
                    }
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 80),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: const Color(0xFFcce5fc),
                ),
                child: const Icon(
                  CupertinoIcons.equal,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
