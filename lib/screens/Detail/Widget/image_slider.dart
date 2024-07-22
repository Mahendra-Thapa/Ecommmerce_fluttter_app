import 'package:flutter/material.dart';

class MyImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final String image;

  const MyImageSlider({
    Key? key,
    required this.image,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0), // Add padding of 5 units around the PageView
      child: SizedBox(
        height: 200, // Adjust height as per your requirement
        child: PageView.builder(
          onPageChanged: onChange,
          itemBuilder: (context, index) {
            return Hero(
              tag: image,
              child: Image.asset(
                image,
                fit: BoxFit.cover, // Adjust image fitting as needed
              ),
            );
          },
        ),
      ),
    );
  }
}
