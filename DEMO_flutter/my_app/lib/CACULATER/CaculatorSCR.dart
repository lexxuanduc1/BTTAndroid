import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eval_ex/expression.dart';

class CaculaterSCR extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CaculaterSCRState();
}

class CaculaterSCRState extends State<CaculaterSCR> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    Expression exp;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(50),
          child: Text(
            text,
            maxLines: 4,
            style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: 400,
          height: 450,
          padding: EdgeInsetsDirectional.all(5),
          decoration: BoxDecoration(
              color: Colors.white70,
              border: Border.all(color: Colors.black, width: 3)),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                          onPressed: () => {
                                setState(() {
                                  text = '';
                                }),
                              },
                          child: Text("C"))),
                  SizedBox(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(onPressed: null, child: Text("%"))),
                  SizedBox(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                          onPressed: () => {
                                setState(() {
                                  text += '';
                                }),
                                text = text.substring(0, text.length - 1)
                              },
                          child: Text("X"))),
                  SizedBox(
                    width: 85,
                    height: 85,
                    child: ElevatedButton(
                        onPressed: () => {
                              setState(() {
                                text += '';
                              }),
                              if (text.substring(text.length - 1) == '+' ||
                                  text.substring(text.length - 1) == '-' ||
                                  text.substring(text.length - 1) == '*' ||
                                  text.substring(text.length - 1) == '/' ||
                                  text.substring(text.length - 1) == '.')
                                text += ''
                              else
                                text += '/'
                            },
                        child: Text("/")),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                          onPressed: () => {
                                setState(() {
                                  text += '';
                                }),
                                text += 7.toString()
                              },
                          child: Text("7"))),
                  SizedBox(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                          onPressed: () => {
                                setState(() {
                                  text += '';
                                }),
                                text += 8.toString()
                              },
                          child: Text("8"))),
                  SizedBox(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                          onPressed: () => {
                                setState(() {
                                  text += '';
                                }),
                                text += 9.toString()
                              },
                          child: Text("9"))),
                  SizedBox(
                    width: 85,
                    height: 450 / 5,
                    child: ElevatedButton(
                        onPressed: () => {
                              setState(() {
                                text += '';
                              }),
                              if (text.substring(text.length - 1) == '+' ||
                                  text.substring(text.length - 1) == '-' ||
                                  text.substring(text.length - 1) == '*' ||
                                  text.substring(text.length - 1) == '/' ||
                                  text.substring(text.length - 1) == '.')
                                text += ''
                              else
                                text += '*'
                            },
                        child: Text("*")),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                          onPressed: () => {
                                setState(() {
                                  text += '';
                                }),
                                text += 4.toString()
                              },
                          child: Text("4"))),
                  SizedBox(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                          onPressed: () => {
                                setState(() {
                                  text += '';
                                }),
                                text += 5.toString()
                              },
                          child: Text("5"))),
                  SizedBox(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                          onPressed: () => {
                                setState(() {
                                  text += '';
                                }),
                                text += 6.toString()
                              },
                          child: Text("6"))),
                  SizedBox(
                    width: 85,
                    height: 85,
                    child: ElevatedButton(
                        onPressed: () => {
                              setState(() {
                                text += '';
                              }),
                              if (text == '')
                                text += '-'
                              else if (text.substring(text.length - 1) == '*' ||
                                  text.substring(text.length - 1) == '/' ||
                                  text.substring(text.length - 1) == '.')
                                text += ''
                              else
                                text += '-'
                            },
                        child: Text("-")),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                          onPressed: () => {
                                setState(() {
                                  text += '';
                                }),
                                text += 1.toString()
                              },
                          child: Text("1"))),
                  SizedBox(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                          onPressed: () => {
                                setState(() {
                                  text += '';
                                }),
                                text += 2.toString()
                              },
                          child: Text("2"))),
                  SizedBox(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                          onPressed: () => {
                                setState(() {
                                  text += '';
                                }),
                                text += 3.toString()
                              },
                          child: Text("3"))),
                  SizedBox(
                    width: 85,
                    height: 85,
                    child: ElevatedButton(
                        onPressed: () => {
                              setState(() {
                                text += '';
                              }),
                              if (text == '')
                                text += '+'
                              else if (text.substring(text.length - 1) == '*' ||
                                  text.substring(text.length - 1) == '/' ||
                                  text.substring(text.length - 1) == '.')
                                text += ''
                              else
                                text += '+'
                            },
                        child: Text("+")),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                          onPressed: () => {
                                setState(() {
                                  text += '';
                                }),
                                text += 0.toString() * 2
                              },
                          child: Text("00"))),
                  SizedBox(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                          onPressed: () => {
                                setState(() {
                                  text += '';
                                }),
                                text += 0.toString()
                              },
                          child: Text("0"))),
                  SizedBox(
                    width: 85,
                    height: 85,
                    child: ElevatedButton(
                        onPressed: () => {
                              setState(() {
                                text += '';
                              }),
                              if (text.contains('.') ||
                                  text.substring(text.length - 1) == '+' ||
                                  text.substring(text.length - 1) == '-' ||
                                  text.substring(text.length - 1) == '*' ||
                                  text.substring(text.length - 1) == '/')
                                text += ''
                              else
                                text += '.'
                            },
                        child: Text(".")),
                  ),
                  SizedBox(
                    width: 85,
                    height: 85,
                    child: ElevatedButton(
                        onPressed: () => {
                              setState(() {
                                text += '';
                              }),
                              exp = Expression(text),
                              text = exp.eval().toString()
                            },
                        child: Text("=")),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
