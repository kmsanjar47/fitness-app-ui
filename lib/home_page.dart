import "package:flutter/material.dart";
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Hello, Villie!",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.w800),
                    ),
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.grey[400],
                      child: const Center(
                        child: Icon(Icons.group),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Your Progress",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                    clipBehavior: Clip.none,
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 10,
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.all(7),
                          width: 140,
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(7),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade400,
                                    offset: const Offset(4, 4),
                                    blurRadius: 7),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircularPercentIndicator(
                                  backgroundColor: Colors.deepOrange,
                                  radius: 30,
                                  progressColor: Colors.white.withOpacity(0.7),
                                  percent: 19 / 40,
                                  center: Text(
                                    "${17 / 40 * 100}%",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.9),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Working",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                    const Text(
                                      "Hours",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                    Text(
                                      "Working hours",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.7),
                                          fontSize: 12),
                                    ),
                                    Text(
                                      "exceeded by 3 hours",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.7),
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Wednesday, March 7",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.grey[300]),
                      child: const Center(
                        child: Icon(
                          Icons.calendar_today_rounded,
                          color: Colors.deepPurpleAccent,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "10:00 AM",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.76,
                            height: 120,
                            padding: const EdgeInsets.all(17),
                            decoration: BoxDecoration(
                              color: Colors.redAccent.withOpacity(0.3),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Meeting with front-end developers",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.redAccent),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("Flose Real Estate Project"),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.grey[400],
                                        child: const Center(
                                          child: Icon(Icons.group),
                                        ),
                                      ),Positioned(
                                        right: -20,
                                        child: CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.grey[400],
                                          child: const Center(
                                            child: Icon(Icons.group),
                                          ),
                                        ),
                                      ),
                                        Positioned(
                                          right: -40,
                                          child: CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Colors.grey[400],
                                            child: const Center(
                                              child: Icon(Icons.group),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: -60,
                                          child: CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Colors.grey[400],
                                            child: const Center(
                                              child: Icon(Icons.group),
                                            ),
                                          ),
                                        )
                                    ],),
                                    const Text("9:30 AM - 10:50 AM")
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 20,
                      );
                    },
                    itemCount: 10)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
