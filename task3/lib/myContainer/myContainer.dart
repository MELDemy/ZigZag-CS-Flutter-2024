import 'package:flutter/material.dart';


class myContainer extends StatelessWidget {


  myContainer({super.key,
    required this.contains,
    this.padding,
  });

  EdgeInsets? padding = const EdgeInsets.symmetric(vertical: 10,horizontal: 27);

  Widget contains;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.green[200],
        borderRadius: BorderRadius.circular(25),
      ),
      child:
          contains,
    );
  }
}
