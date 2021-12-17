import 'package:flutter/material.dart';
import 'content.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemCount: contents.length,
              itemBuilder: (context, i) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage((contents[i].image)!),
                      width: 333,
                      height: 250,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      (contents[i].title)!,
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      (contents[i].description)!,
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              contents.length,
                              (index) => Container(
                                    margin: EdgeInsets.only(right: 5),
                                    width: currentIndex == index ? 50 : 10,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(currentIndex == index
                                            ? 0xff4756DF
                                            : 0xffB9BFF3)),
                                  ))),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
              margin: EdgeInsets.only(bottom: 60),
              width: 250,
              height: 55,
              decoration: BoxDecoration(
                  color: Color(0xff4756DF),
                  borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                onPressed: () {
                  if (currentIndex == contents.length - 1) {}
                  controller.nextPage(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeIn);
                },
                child: Text(
                  currentIndex == contents.length - 1 ? 'Continue' : 'Next',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ))
        ],
      ),
    );
  }
}
