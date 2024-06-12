import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SliderPhoto extends StatelessWidget {
  const SliderPhoto({required this.orientation, required this.currentIndex});
  final Orientation orientation;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    final List<String> pictureList = <String>[
      'assets/images/intro1.jpg',
      'assets/images/intro2.jpg',
      'assets/images/slider_3.svg'
    ];

    if (orientation == Orientation.portrait)
      return Container(
          height: MediaQuery.of(context).size.height * .4,
          child: currentIndex == 2
              ? SvgPicture.asset(pictureList[currentIndex])
              : Image.asset(
                  pictureList[currentIndex],
                ));
    else
      return Container(
          width: 74,
          height: 74,
          child: SvgPicture.asset(
            pictureList[currentIndex],
          ));
  }
}
