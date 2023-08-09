import 'dart:ui';

import 'package:flutter/material.dart';

import '../setting.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int pagenumber = 0;
  Widget dotpageView() {
    return Builder(builder: (context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i = 0; i < 2; i++)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              width: i == pagenumber ? 25 : 6,
              height: 6,
              decoration: BoxDecoration(
                  color: i == pagenumber
                      ? const Color((0xffA2CB07))
                      : Colors.white,
                  borderRadius: BorderRadius.circular(50)),
            ),
        ],
      );
    });
  }

  PageController nextpage = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, //Color(0xff276BB2),
      body: PageView(
        controller: nextpage,
        onPageChanged: (value) {
          setState(() {
            pagenumber = value;
          });
        },
        children: [
          //const Spacer(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Image.network(
                "https://o.remove.bg/downloads/9c00e678-57a7-4677-bc65-4365d618d9dc/istockphoto-1353764553-1024x1024-removebg-preview.png",
              ),
              const Text(
                "Check your body to protect your self ",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                //splashColor: Color(0xfffbd153),
                onTap: () {
                  nextpage.animateToPage(1,
                      duration: const Duration(milliseconds: 700),
                      curve: Curves.easeIn);
                },
                child: Container(
                    width: 114,
                    height: 54,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: const Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              dotpageView(),
            ]),
          ),

          Column(
            children: [
              Image.network(
                  "https://o.remove.bg/downloads/7fccd960-a9fb-43c8-86f4-3625a75898e8/male-doctor-presenting-something-isolated-vector-illustration_126609-684-removebg-preview.png"),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: const [
                    Text(
                      "GOOD ",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white //Color(0xffc5e7f9),
                          ),
                      textAlign: TextAlign.center,
                    ),
                    Icon(Icons.celebration, size: 50, color: Color(0xfffbd153)),
                  ],
                ),
              ),
              const Text("decision ,let's make you Healthier",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    // fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                //splashColor: Color(0xfffbd153),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const Setting()));
                },
                child: Container(
                    width: 114,
                    height: 54,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: const Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              dotpageView(),
            ],
          ),
        ],
      ),
    );
  }
}
