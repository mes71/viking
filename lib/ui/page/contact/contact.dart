import 'package:flutter/material.dart';
import 'package:viking/ui/utils/colors.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact",
            style: textTheme.displayLarge,
          ),
          const Text(
              "We'd love to hear from you. Give us a ring at +44 7911 123456, or send us a message below."),
          const SizedBox(
            height: 10,
          ),
          const Text("Name"),
          TextFormField(
            cursorColor: bgDarkGray,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: bgPrimaryColor, width: 1)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: bgPrimaryColor, width: 1))),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Email"),
          TextFormField(
            cursorColor: bgDarkGray,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: bgPrimaryColor, width: 1)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: bgPrimaryColor, width: 1))),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Phone"),
          TextFormField(
            cursorColor: bgDarkGray,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: bgPrimaryColor, width: 1)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: bgPrimaryColor, width: 1))),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Message"),
          TextFormField(
            maxLines: 4,
            cursorColor: bgDarkGray,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: bgPrimaryColor, width: 1)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: bgPrimaryColor, width: 1))),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("Send")),
            ],
          )
        ],
      ),
    );
  }
}
