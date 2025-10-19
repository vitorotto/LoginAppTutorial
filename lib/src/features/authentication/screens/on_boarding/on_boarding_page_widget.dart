import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../models/on_boarding_model.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({super.key, required this.model});

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(vDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(model.image), height: size.height * 0.5),

          Column(
            children: [
              Text(
                model.title,
                style: TextStyle(
                  color: const Color.fromARGB(255, 49, 49, 49),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                model.subTitle,
                style: TextStyle(
                  color: const Color.fromARGB(255, 49, 49, 49),
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Text(
            model.counterText,
            style: TextStyle(
              color: const Color.fromARGB(255, 49, 49, 49),
              fontSize: 16,
            ),
          ),
          SizedBox(height: 50.0),
        ],
      ),
    );
  }
}
