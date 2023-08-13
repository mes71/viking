import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      padding: EdgeInsets.symmetric(vertical: 10),
      tabs: [
        Tab(
          text: "Who We Are",
        ),
        Tab(
          text: "Destinations",
        ),
        Tab(
          text: "Pricing",
        ),
        Tab(
          text: "Contact",
        ),
      ],
      onTap: (value) {

      },
    );
  }
}
