import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_page/widget/custome_button.dart';
import 'package:responsive_page/widget/nft_holder_card.dart';

class MobileScreenLanding extends StatefulWidget {
  const MobileScreenLanding({Key? key}) : super(key: key);

  @override
  State<MobileScreenLanding> createState() => _MobileScreenLandingState();
}

class _MobileScreenLandingState extends State<MobileScreenLanding> {
  List<String> nftList = [
    "imgs/nft_1.png",
    "imgs/nft_2.png",
    "imgs/nft_3.png",
    "imgs/nft_4.png",
    "imgs/nft_2.png",
  ];
  bool isHover = false;
  int selectedItem = -1;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Color(0xffFFCE4E),
              )),
        ],
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/imgs/nft_logo.png"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      const Color(0xff1F121E),
                      const Color(0xff1C121F).withOpacity(0.21)
                    ])),
                child: Column(
                  children: [
                    Text(
                      "Explore, Buy and",
                      style: TextStyle(
                          fontSize: size.width * 0.1,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sell the ",
                          style: TextStyle(
                              fontSize: size.width * 0.1,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Best",
                          style: TextStyle(
                              fontSize: size.width * 0.1,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xffFFCE4E)),
                        ),
                      ],
                    ),
                    Text(
                      "NFTs!",
                      style: TextStyle(
                          fontSize: size.width * 0.15,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffFFCE4E)),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                      onPressed: () {},
                      title: "Explore",
                      titleStyle: TextStyle(fontSize: size.width * 0.03),
                      buttonColor: const Color(0xffFFCE4E)),
                  CustomButton(
                      onPressed: () {},
                      title: "Create",
                      titleStyle: TextStyle(fontSize: size.width * 0.03),
                      buttonColor: const Color(0xff594846)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // color: Colors.red,
                  decoration: BoxDecoration(
                      // color: const Color(0xff4F464E).withOpacity(0.1),
                      gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xffE7B226).withOpacity(0.25),
                      const Color(0xff60E7CE).withOpacity(0.37)
                    ],
                  )),
                  height: size.height * 0.4,
                  // width: size.width * 0.4,
                  child: Stack(children: [
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
                      // right: size.width * 0.1,
                      left: size.width * 0.35,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
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
                          const SizedBox(
                            width: 10,
                          ),
                          CustomButton(
                            onPressed: () => print("Bid"),
                            title: "Start Bid",
                            buttonColor: const Color(0xffFFCE4E),
                            titleStyle: TextStyle(
                                color: const Color(0xff000000),
                                fontSize: size.width * 0.015),
                            margin: const EdgeInsets.all(0),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                        style:
                            TextStyle(color: Color(0xff9B9E9A), fontSize: 12),
                      )
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
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
                          style:
                              TextStyle(color: Color(0xff9B9E9A), fontSize: 12),
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
                        style:
                            TextStyle(color: Color(0xff9B9E9A), fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset("imgs/clients.png")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height * 0.1,
                  color: const Color(0xff251928),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 5,
                          left: size.width * 0.33,
                          child: Image.asset(
                            "imgs/live_auctions.png",
                            height: size.height * 0.06,
                          )),
                      Positioned(
                        top: 5,
                        left: size.width * 0.35,
                        child: Text(
                          "Live Auctions",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: size.height * 0.05),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                width: size.width * 1,
                height: size.height * 1,
                child: ListView.separated(
                    padding: const EdgeInsets.all(12),
                    scrollDirection: Axis.vertical,
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: 4,
                    itemBuilder: (context, index) => NftHolderCard(
                        isHover: isHover,
                        indx: index,
                        selectedItem: selectedItem,
                        infoList: nftList)),
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "How it Works",
                              style: TextStyle(
                                  color: const Color(0xffF5FBF2),
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width * 0.05),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            "icons/wallet.svg",
                            width: size.width * 0.1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              "Settup Your Wallet",
                              style: TextStyle(
                                  color: const Color(0xffFFCE4E),
                                  fontSize: size.width * 0.03),
                            ),
                          )
                        ],
                      ),
                      RotatedBox(
                        quarterTurns: 45,
                        child: SvgPicture.asset(
                          "icons/divider.svg",
                          width: size.width * 0.15,
                        ),
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            "icons/collection.svg",
                            width: size.width * 0.1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              "Create your collection",
                              style: TextStyle(
                                  color: const Color(0xffFFCE4E),
                                  fontSize: size.width * 0.03),
                            ),
                          )
                        ],
                      ),
                      RotatedBox(
                        quarterTurns: 45,
                        child: SvgPicture.asset(
                          "icons/divider.svg",
                          width: size.width * 0.15,
                        ),
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            "icons/nft.svg",
                            width: size.width * 0.1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              "Add your NFTs",
                              style: TextStyle(
                                  color: const Color(0xffFFCE4E),
                                  fontSize: size.width * 0.03),
                            ),
                          )
                        ],
                      ),
                      RotatedBox(
                        quarterTurns: 45,
                        child: SvgPicture.asset(
                          "icons/divider.svg",
                          width: size.width * 0.15,
                        ),
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            "icons/list_sale.svg",
                            width: size.width * 0.1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              "List them for sale",
                              style: TextStyle(
                                  color: const Color(0xffFFCE4E),
                                  fontSize: size.width * 0.03),
                            ),
                          )
                        ],
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
