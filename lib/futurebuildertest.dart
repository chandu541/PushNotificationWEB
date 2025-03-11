import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FuturebuilderTest extends StatefulWidget {
  const FuturebuilderTest({super.key});

  @override
  State<FuturebuilderTest> createState() => _FuturebuilderTestState();
}

class _FuturebuilderTestState extends State<FuturebuilderTest> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(body:  Text("future builder"));
  }
}