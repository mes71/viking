import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class Destinations extends StatelessWidget {
  const Destinations({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 44, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Destinations",
            style: textTheme.displayLarge,
          ),
          const SizedBox(
            height: 18,
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) => Container(
              height: 65,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: bgDarkGray, width: 1),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Paris",
                      style: textTheme.titleLarge,
                    ),
                    Text("June 16 - 21", style: textTheme.titleLarge),
                  ],
                ),
              ),
            ),
            itemCount: 4,
          ))
        ],
      ),
    );
  }
}
