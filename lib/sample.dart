import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SampleWidget extends StatefulWidget {
  final int number;

  const SampleWidget({Key? key, required this.number}) : super(key: key);

  @override
  State<SampleWidget> createState() {
    print('Number : $number createState');
    return _SampleWidgetState();
  }
}

class _SampleWidgetState extends State<SampleWidget> {
   int number =1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('Number : ${widget.number} initState');
    number = widget.number;
  }

  @override
  void dispose() {
    print('Number : ${widget.number} dispose');
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant SampleWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('Number : ${widget.number} didupdatewidget');
    if (oldWidget.number != widget.number) {
      print('number changed');
       print('number changed old widget ${oldWidget.number}');
        print('number changed widget.number ${widget.number}');
    }
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
     print('Number : ${widget.number} dependencies changes');
  }
  @override
  void deactivate() {
    
    // TODO: implement deactivate
    super.deactivate();
     print('Number : ${widget.number} deactivate method');
  }
   

  @override
  Widget build(BuildContext context) {
    print('Number : ${widget.number} buildState');
    return Container(
      height: 600,
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              number += 1;
            });
          },
          child: Text(
            number.toString(),
            style: const TextStyle(fontSize: 80),
          ),
        ),
      ),
    );
  }
}
