import 'package:flutter/material.dart';
import 'package:udemyapp/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key}); //
  const GradientContainer.purple() // les edw oti tha kalesw to function .purple()
    // kai an klhthei afto tote tha ginei deeppurple an den kleithei afto tote tha ginei indigo.
    : color1 = Colors.deepPurple,
      color2 = Colors.indigo;
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return  Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}

//class StyleText extends StatelessWidget {
 // const StyleText({super.key, required this.text});
 // final String text;
 // @override
 // Widget build(context) {
 //   return Text(text, style: TextStyle(color: Colors.white, fontSize: 25));
 // }
//}
