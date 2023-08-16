import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class Pricing extends StatefulWidget {
  const Pricing({super.key});

  @override
  State<Pricing> createState() => _PricingState();
}

class _PricingState extends State<Pricing> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 44, horizontal: 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pricing",
              style: textTheme.displayLarge,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "We offer one price for all tours:",
              style: textTheme.titleLarge,
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Text(
                  "\$3758",
                  style: textTheme.displayLarge,
                ),
                Text("\\ person")
              ],
            ),
            Text(
                "Et nunc quidem quod eam tuetur, ut de vite potissimum loquar, est id extrinsecus. Quid turpius quam sapientis vitam ex insipientium sermone pendere."),
            SizedBox(
              height: 18,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "Contact us",
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
                TextSpan(
                  text: " for group pricing.",
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
