import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_page/widget/custome_button.dart';

class SecondSection extends StatelessWidget {
  const SecondSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: _secondSectionPartOne(size)),
        // Expanded(
        //     child: Container(
        //   color: Colors.blue,
        // )),
        Expanded(child: _secondSectionPartTwo(size)),
      ],
    );
  }

  Widget _secondSectionPartTwo(Size size) {
    return Stack(
      children: [
        Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            left: 0,
            child: SvgPicture.asset(
              "icons/effect.svg",
              width: 300,
            )),
        Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            left: 0,
            child: Image.asset("imgs/un_splash.png")),
        Positioned(
          bottom: 5,
          right: size.width * 0.15,
          left: size.width * 0.15,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Artist",
                      style: TextStyle(
                          color: Color(0xff16091B),
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "@Wizard",
                        style: TextStyle(color: Color(0xff594D5E)),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: CustomButton(
                  onPressed: () => print("Bid"),
                  title: "Start Bid",
                  buttonColor: const Color(0xffFFCE4E),
                  titleStyle: TextStyle(
                      color: const Color(0xff000000),
                      fontSize: size.width * 0.011),
                  margin: const EdgeInsets.all(0),
                ),
              ),
            ],
          ),
        ),
        Positioned(
            top: 20,
            // right: size.width * 0.15,
            left: size.width * 0.15,
            child: Image.asset(
              "imgs/candy.png",
              height: size.height * 0.2,
            )),
        Positioned(
          top: 5,
          right: size.width * 0.15,
          left: size.width * 0.15,
          child: Container(
            height: size.height * 0.1,
            width: size.width * 0.1,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              // color: Colors.teal,
              gradient: LinearGradient(
                colors: [
                  const Color(0xffFAFAFA).withOpacity(0.9),
                  const Color(0xffFF893D).withOpacity(0.09),
                  const Color(0xffFE9A59).withOpacity(0.23),
                ],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Current bid",
                      style: TextStyle(fontSize: size.width * 0.01),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "0.99 ETH",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.width * 0.01),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ends in",
                      style: TextStyle(fontSize: size.width * 0.01),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "25 hrs",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.width * 0.01),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Column _secondSectionPartOne(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Explore, Buy and",
          style: TextStyle(
              fontSize: size.width * 0.03, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text(
              "Sell the ",
              style: TextStyle(
                  fontSize: size.width * 0.03, fontWeight: FontWeight.bold),
            ),
            Text(
              "Best",
              style: TextStyle(
                  fontSize: size.width * 0.04,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffFFCE4E)),
            ),
          ],
        ),
        Text(
          "NFTs!",
          style: TextStyle(
              fontSize: size.width * 0.04,
              fontWeight: FontWeight.bold,
              color: const Color(0xffFFCE4E)),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: size.height * 0.05),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: CustomButton(
                  onPressed: () => print("Create"),
                  title: "Explore",
                  buttonColor: const Color(0xffFFCE4E),
                  titleStyle: TextStyle(
                      color: const Color(0xff000000),
                      fontSize: size.width * 0.01),
                  margin: const EdgeInsets.all(0),
                ),
              ),
              const Expanded(child: SizedBox()),
              Expanded(
                child: CustomButton(
                  onPressed: () => print("Create"),
                  title: "Create",
                  titleStyle: TextStyle(
                      color: const Color(0xffFFFFFF),
                      fontSize: size.width * 0.01),
                  margin: const EdgeInsets.all(0),
                ),
              ),
              const Expanded(child: SizedBox()),
              const Expanded(child: SizedBox()),
            ],
          ),
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "32K+",
                  style: TextStyle(
                      color: const Color(0xffF5FBF2),
                      fontSize: size.width * 0.03,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Artworks",
                  style: TextStyle(color: Color(0xff9B9E9A), fontSize: 12),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "20K+",
                    style: TextStyle(
                        color: const Color(0xffF5FBF2),
                        fontSize: size.width * 0.03,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Auctions",
                    style: TextStyle(color: Color(0xff9B9E9A), fontSize: 12),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "12K+",
                  style: TextStyle(
                      color: const Color(0xffF5FBF2),
                      fontSize: size.width * 0.03,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Creators",
                  style: TextStyle(color: Color(0xff9B9E9A), fontSize: 12),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
