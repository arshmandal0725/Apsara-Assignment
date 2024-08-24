import 'package:flutter/material.dart';

class UpcomingeventContainer extends StatelessWidget {
  const UpcomingeventContainer({
    super.key,
    required this.img,
    required this.name,
    required this.date,
  });
  final String img;
  final String name;
  final String date;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: mq.height * 0.10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white, // Card color
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Shadow color
            spreadRadius: 2, // Adjust the spread of the shadow
            blurRadius: 8, // Adjust the blur effect of the shadow
            offset: Offset(0, 4), // Shadow position (x, y)
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 85,
            child: Image.asset(
              img,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            width: 20,
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
                "Date: $date",
                style: const TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 13.5),
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Container()],
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
