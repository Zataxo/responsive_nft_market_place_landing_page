import 'package:flutter/material.dart';
import 'package:responsive_page/widget/custome_button.dart';
import 'package:responsive_page/widget/lits_items.dart';
import 'package:responsive_page/widget/second_section.dart';

class WebScreenLanding extends StatefulWidget {
  const WebScreenLanding({Key? key}) : super(key: key);

  @override
  State<WebScreenLanding> createState() => _WebScreenLandingState();
}

class _WebScreenLandingState extends State<WebScreenLanding> {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: PageView.builder(
        scrollDirection: Axis.vertical,
        pageSnapping: false,
        itemCount: 2,
        itemBuilder: (context, index) => Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("imgs/nft_logo.png"),
                  const Spacer(),
                  const Expanded(flex: 2, child: ListItems()),
                  CustomButton(
                    onPressed: () => print("Create"),
                    title: "Create Wallet",
                    margin: const EdgeInsets.all(0),
                  ),

                  // const Expanded(child: SizedBox())
                ],
              ),
            ),
            const Expanded(
              flex: 7,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: SecondSection(),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                // color: Colors.teal,
                padding: const EdgeInsets.all(40),
                decoration: const BoxDecoration(),
                child: Image.asset("imgs/coins_header.png"),
              ),
            ),
            // Expanded(
            //     flex: 3,
            //     child: Container(
            //       color: Colors.red,
            //     ))
          ],
        ),
      ),
    ));
  }
}
