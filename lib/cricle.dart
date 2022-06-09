import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final String child;
  Circle({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 80,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 201, 197, 186),
              image: DecorationImage(
                  image: NetworkImage(
                      'https://googleflutter.com/sample_image.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Text(
            child,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
