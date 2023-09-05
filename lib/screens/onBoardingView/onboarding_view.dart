import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ui_project/constants/colors.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  List<String> screenNo = ["One", "Two"];
  List<String> animation = [
    "assets/animation/animation_1.json",
    "assets/animation/animation_2.json"
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },
        itemCount: screenNo.length,
        itemBuilder: (BuildContext context, int index) {
          return Scaffold(
            backgroundColor: PrimaryColors.primaryBlue,
            body: SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20, left: 0),
                      height: 200,
                      width: 300,
                      child: Center(
                        child: Text(
                          "Your Holiday shopping delivered to Screen ${screenNo[index]}  🏕",
                          style: TextStyle(
                              fontSize: 33,
                              fontWeight: FontWeight.w700,
                              color: TextColors.textColor1),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 294,
                      height: 75,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 22),
                        child: Text(
                          "There's something for everyone to enjoy with Sweet Shop Favourites Screen ${index + 1}",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: TextColors.textColor2),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.10,
                    ),
                    Container(
                      child: currentPage == 0
                          ? row2()
                          : currentPage == 1
                              ? row1()
                              : const Text(""),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: Lottie.asset(animation[currentPage]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20, left: 20),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              fixedSize: const Size(260, 70),
                              backgroundColor: TextColors.textColor1),
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Get Started",
                                style: TextStyle(
                                    color: TextColors.textColor3,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                              ),
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}

Widget row1() {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Opacity(
        opacity: 0.23,
        child: Container(
          decoration: BoxDecoration(
              color: SecondaryColors.secBlack1,
              borderRadius: BorderRadius.circular(4)),
          width: 24,
          height: 5,
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Container(
        decoration: BoxDecoration(
          color: SecondaryColors.secBlack1,
          borderRadius: BorderRadius.circular(4),
        ),
        width: 34,
        height: 5,
      )
    ],
  );
}

Widget row2() {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: SecondaryColors.secBlack1),
        width: 34,
        height: 5,
      ),
      const SizedBox(
        width: 10,
      ),
      Opacity(
        opacity: 0.23,
        child: Container(
          decoration: BoxDecoration(
              color: SecondaryColors.secBlack1,
              borderRadius: BorderRadius.circular(4)),
          width: 24,
          height: 5,
        ),
      )
    ],
  );
}
