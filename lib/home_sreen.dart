import 'package:apsara_assignment/other_contestent.dart';
import 'package:apsara_assignment/upcomingevent_container.dart';
import 'package:apsara_assignment/votes_container.dart';
import 'package:apsara_assignment/winner_contestent.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Material(
            elevation: 5.0,
            shadowColor: Colors.grey.withOpacity(1), // Customize shadow color
            child: AppBar(
              backgroundColor: Colors.white,
              flexibleSpace: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color: Color.fromARGB(255, 238, 233, 233)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "vote.org.my",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            width: mq.width * 0.27,
                          ),
                          SizedBox(
                              height: 18,
                              child: Image.asset('assets/Vector.png'))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
              SizedBox(
                  height: mq.height * 0.19,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/image 1-2.png",
                    fit: BoxFit.cover,
                  )),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Live Vote Results",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Winner Contestent",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(248, 251, 171, 61),
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        const WinnerContestent(),
                        Positioned(
                            top: -15,
                            right: -15,
                            child: SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/medal 1.png"),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        VotesContainer(
                          votes: '560',
                          color: Color(0xFF0497FF),
                        ),
                        VotesContainer(
                          votes: '50%',
                          color: Color(0xFF7CADBF),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Other Contestents",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          OtherContestent(
                              img: 'assets/third.png',
                              name: 'Chester Cheng',
                              vno: '196',
                              vper: '35',
                              color: Color(0xFFA1D2F5)),
                          SizedBox(
                            height: 10,
                          ),
                          OtherContestent(
                              img: 'assets/sec.png',
                              name: 'Robert Soliman',
                              vno: '56',
                              vper: '10',
                              color: Color(0xFFA1F5D3)),
                          SizedBox(
                            height: 10,
                          ),
                          OtherContestent(
                              img: 'assets/fourth.png',
                              name: 'Kristine Lim',
                              vno: '28',
                              vper: '5',
                              color: Color(0xFFBBF5A1)),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Contest Videos",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "https://www.youtube.com/watch?v=aLtXzKyNxkY",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "Upcoming Events",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const UpcomingeventContainer(
                        img: 'assets/236893-P2YDNE-555[1] 1.png',
                        name: 'Music Festivals',
                        date: '30/09/2024'),
                    const SizedBox(
                      height: 15,
                    ),
                    const UpcomingeventContainer(
                        img: 'assets/4153784[1] 1.png',
                        name: 'Sports Events',
                        date: '30/09/2024'),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      spreadRadius: 0.5, // Spread of the shadow
                      blurRadius: 5, // Blur effect of the shadow
                      offset: const Offset(0, -4), // Shadow position (x, y)
                    ),
                  ],
                ),
                child: Center(
                    child: SizedBox(
                        height: 29,
                        child: Image.asset('assets/Group 109.png'))),
              ),
            ])));
  }
}
