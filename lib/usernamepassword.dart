import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserNamePassword extends StatefulWidget {
  const UserNamePassword({super.key});

  @override
  State<UserNamePassword> createState() => _UserNamePasswordState();
}

class _UserNamePasswordState extends State<UserNamePassword> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
          height: 1000,
          width: double.maxFinite,
          color: Colors.amber,
        ),
        Container(
          color: Colors.amberAccent,
          width: double.maxFinite,
          height: 1000,
        ),
        TextField(
          controller: username,
          decoration: const InputDecoration(hintText: "please end the usename"),
        ),
        TextField(
          controller: password,
          decoration:
              const InputDecoration(hintText: "please end the password"),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Click Me"),
        )
      ])),
    );
  }

}
