import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../widgets/flash_card.dart';

class FlashCardScreen extends StatelessWidget {
 const FlashCardScreen();
  @override
  Widget build(BuildContext context) {
    return new Swiper(
      itemBuilder: (BuildContext context, int index) {
        return new FlashCard();
      },
      itemCount: 10,
      viewportFraction: 0.8,
      scale: 0.9,
    );
  }
}
