import 'package:flutter/material.dart';

class VotesContainer extends StatelessWidget {
  const VotesContainer({super.key, required this.votes, required this.color});
  final String votes;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Container(
      height: mq.height * 0.165,
      width: mq.width * 0.433,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(19)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Total Votes",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
          ),
          Text(
            votes,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 30),
          ),
        ],
      ),
    );
  }
}
