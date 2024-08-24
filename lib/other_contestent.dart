import 'package:flutter/material.dart';

class OtherContestent extends StatelessWidget {
  const OtherContestent(
      {super.key,
      required this.img,
      required this.name,
      required this.vno,
      required this.vper,
      required this.color});
  final String img;
  final String name;
  final String vno;
  final String vper;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: mq.height * 0.10,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: color),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            width: 5,
          ),
          SizedBox(
            width: 90,
            child: Image.asset(
              img,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "$vno Votes",
                style: const TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 13.5),
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$vper%",
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
