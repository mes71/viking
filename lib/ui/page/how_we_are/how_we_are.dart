import 'package:flutter/material.dart';

class HowWeAre extends StatelessWidget {
  const HowWeAre({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme
        .of(context)
        .textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 44, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Who We Are",
            style: textTheme.displayLarge,
          ),
          const SizedBox(
            height: 18,
          ),

          Text(
            """
Quid turpius quam sapientis vitam ex insipientium sermone pendere? Et non ex maxima parte de tota iudicabis? Videamus igitur sententias eorum, tum ad verba redeamus. Quae sequuntur igitur?
              
Ne tum quidem te respicies et cogitabis sibi quemque natum esseet suis voluptatibus? Et nunc quidem quod eam tuetur, ut de vite potissimum loquar, est id extrinsecus.
              
Videamus igitur sententias eorum?""",
            style: textTheme.headlineSmall,
          )
        ],
      ),
    );
  }
}
