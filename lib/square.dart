import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final String child;
  Square({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        height: 400,
        color: Color.fromARGB(255, 201, 197, 186),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/sandesh.PNG',
                height: 300,
                width: 500,
              ),
              Text(
                child,
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
