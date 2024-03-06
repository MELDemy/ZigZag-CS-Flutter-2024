import 'package:flutter/material.dart';


class myContainer extends StatefulWidget {

  var col=Colors.green[200];
  myContainer({super.key,
    required this.contains,
    this.padding,
  });

  EdgeInsets? padding = const EdgeInsets.symmetric(vertical: 10,horizontal: 27);

  Widget contains;

  @override
  State<myContainer> createState() => _myContainerState();
}

class _myContainerState extends State<myContainer> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      decoration: BoxDecoration(
        color: widget.col,
        borderRadius: BorderRadius.circular(25),
      ),
      child:
          widget.contains,
    );
  }
}
