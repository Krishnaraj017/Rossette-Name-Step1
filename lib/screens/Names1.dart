import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class SetTime extends StatelessWidget {
  const SetTime({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Timer(),
    );
  }
}

class Timer extends StatefulWidget {
  const Timer({Key? key});

  @override
  State<Timer> createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  final PageController _pageController = PageController(initialPage: 0);
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 40),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Let's get to know you",
                  style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .001),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Better",
                  style: TextStyle(
                    wordSpacing: 1,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
             SizedBox(height: MediaQuery.of(context).size.height * .03),
            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width * .36),
               SmoothPageIndicator(
                  controller: _pageController,
                  count: 5,
                  effect: SlideEffect(
                    activeDotColor: Colors.blue,
                    dotColor: Colors.black.withOpacity(0.5),
                    dotWidth: 10,
                    dotHeight: 5,
                  ),
                ),


              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .04),
            Center(
              child: Container(
                width: 123,
                height: 123,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/profile 1.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .05),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "How can we Address you?",
                style: TextStyle(
                  wordSpacing: 1,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .097),
       Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(
                          color: Colors.black87, // set a very dark color
                          width: 0.2,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "Type your name",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),





            SizedBox(height: MediaQuery.of(context).size.height * .2),
            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width * .06),
                Container(
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.3),
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      _pageController.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linear,
                      );
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * .60),
                Container(
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.linear,
                        );
                      });
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
