import 'package:flutter/material.dart';

class WinnerContestent extends StatelessWidget {
  const WinnerContestent({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: mq.height * 0.15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(245, 245, 161, 161)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            width: 120,
            child: Image.asset(
              "assets/second.png",
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Omar D. Regalado",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Lorem ipsum loremipsum",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13.5),
              )
            ],
          )
        ],
      ),
    );
  }
}
