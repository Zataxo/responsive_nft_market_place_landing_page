import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_page/widget/nft_holder_card.dart';

class SecondPageView extends StatefulWidget {
  const SecondPageView({
    Key? key,
  }) : super(key: key);

  @override
  State<SecondPageView> createState() => _SecondPageViewState();
}

class _SecondPageViewState extends State<SecondPageView> {
  List<String> nftList = [
    "imgs/nft_1.png",
    "imgs/nft_2.png",
    "imgs/nft_3.png",
    "imgs/nft_4.png",
    "imgs/nft_2.png",
  ];
  int selectedItem = -1;
  bool isHover = false;
  bool isForward = false;
  bool isBackward = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        const Color(0xff251928),
        const Color(0xff251928).withOpacity(0)
      ])),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Positioned(
                    top: 5,
                    left: size.width * 0.39,
                    child: Image.asset(
                      "imgs/live_auctions.png",
                      height: size.height * 0.06,
                    )),
                Positioned(
                    top: 5,
                    left: size.width * 0.4,
                    child: Text(
                      "Live Auctions",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: size.height * 0.05),
                    ))
              ],
            ),
          ),
          Expanded(
              flex: 7,
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              isBackward = true;
                              isForward = false;
                              setState(() {});
                            },
                            child: SvgPicture.asset(
                              "icons/arrow.svg",
                              color: isBackward && !isForward
                                  ? const Color(0xffF5FBF2)
                                  : const Color(0xffF5FBF2).withOpacity(0.5),
                              height: isBackward && !isForward
                                  ? size.height * 0.07
                                  : size.height * 0.05,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: RotatedBox(
                                quarterTurns: 90,
                                child: InkWell(
                                  onTap: () {
                                    isForward = true;
                                    isBackward = false;
                                    setState(() {});
                                  },
                                  child: SvgPicture.asset(
                                    "icons/arrow.svg",
                                    color: isForward && !isBackward
                                        ? const Color(0xffF5FBF2)
                                        : const Color(0xffF5FBF2)
                                            .withOpacity(0.5),
                                    height: isForward && !isBackward
                                        ? size.height * 0.07
                                        : size.height * 0.05,
                                  ),
                                )),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 5,
                      child: Center(
                        child: ListView.separated(
                            padding: const EdgeInsets.all(12),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                                  width: 20,
                                ),
                            itemCount: nftList.length,
                            itemBuilder: (context, index) => NftHolderCard(
                                isHover: isHover,
                                indx: index,
                                selectedItem: selectedItem,
                                infoList: nftList)),
                      )),
                ],
              )),
          Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "How it Works",
                          style: TextStyle(
                              color: const Color(0xffF5FBF2),
                              fontWeight: FontWeight.bold,
                              fontSize: size.width * 0.03),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SvgPicture.asset(
                              "icons/wallet.svg",
                              width: size.width * 0.05,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                "Settup Your Wallet",
                                style: TextStyle(
                                    color: const Color(0xffFFCE4E),
                                    fontSize: size.width * 0.01),
                              ),
                            )
                          ],
                        ),
                        SvgPicture.asset(
                          "icons/divider.svg",
                          width: size.width * 0.1,
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              "icons/collection.svg",
                              width: size.width * 0.05,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                "Create your collection",
                                style: TextStyle(
                                    color: const Color(0xffFFCE4E),
                                    fontSize: size.width * 0.01),
                              ),
                            )
                          ],
                        ),
                        SvgPicture.asset(
                          "icons/divider.svg",
                          width: size.width * 0.1,
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              "icons/nft.svg",
                              width: size.width * 0.05,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                "Add your NFTs",
                                style: TextStyle(
                                    color: const Color(0xffFFCE4E),
                                    fontSize: size.width * 0.01),
                              ),
                            )
                          ],
                        ),
                        SvgPicture.asset(
                          "icons/divider.svg",
                          width: size.width * 0.1,
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(
                              "icons/list_sale.svg",
                              width: size.width * 0.05,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                "List them for sale",
                                style: TextStyle(
                                    color: const Color(0xffFFCE4E),
                                    fontSize: size.width * 0.01),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  // Widget _buildNftCardHolder(int _indx) {
  //   final size = MediaQuery.of(context).size;
  //   return MouseRegion(
  //     onEnter: (event) {
  //       // print(isHover);
  //       isHover = true;
  //       selectedItem = _indx;
  //       setState(() {});
  //     },
  //     onExit: (event) {
  //       isHover = false;
  //       setState(() {});
  //     },
  //     child: Container(
  //       color: const Color(0xff3D2942),
  //       width: size.width * 0.2,
  //       padding: const EdgeInsets.all(10.0),
  //       child: Material(
  //         elevation: selectedItem == _indx && isHover ? 10 : 0,
  //         color: const Color(0xff3D2942),
  //         shadowColor: const Color(0xffE03054),
  //         animationDuration: const Duration(seconds: 2),
  //         child: Column(
  //           children: [
  //             Expanded(
  //               child: Image.asset(
  //                 nftList[_indx],
  //                 width: size.width * 1,
  //                 height: size.height * 1,
  //               ),
  //             ),
  //             const SizedBox(
  //               height: 5,
  //             ),
  //             Expanded(
  //               child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   Row(
  //                     // mainAxisSize: MainAxisSize.min,
  //                     children: [
  //                       Image.asset(
  //                         "imgs/profile_image1.png",
  //                         height: size.height * 0.04,
  //                         // width: size.width * 0.1,
  //                       ),
  //                       Padding(
  //                         padding: EdgeInsets.symmetric(
  //                             horizontal: size.width * 0.01),
  //                         child: Column(
  //                           children: [
  //                             Text(
  //                               "Virtual Art",
  //                               style: TextStyle(
  //                                   color: const Color(0xffF5FBF2),
  //                                   fontSize: size.width * 0.01),
  //                             ),
  //                             Text(
  //                               "by @wzard",
  //                               style: TextStyle(
  //                                   color: const Color(0xffBDAAC1),
  //                                   fontSize: size.width * 0.008),
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                       const Spacer(),
  //                       SvgPicture.asset(
  //                         "icons/like.svg",
  //                         width: size.width * 0.01,
  //                       ),
  //                       Text(
  //                         "92",
  //                         style: TextStyle(
  //                             color: const Color(0xff76607A),
  //                             fontSize: size.width * 0.008),
  //                       )
  //                     ],
  //                   ),
  //                   Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Text("Current Bid",
  //                           style: TextStyle(
  //                               color: const Color(0xff76607A),
  //                               fontSize: size.width * 0.01)),
  //                       Text("4.89 ETH",
  //                           style: TextStyle(
  //                               color: const Color(0xffF5FBF2),
  //                               fontSize: size.width * 0.01)),
  //                     ],
  //                   ),
  //                   Row(
  //                     children: [
  //                       Expanded(
  //                           child: CustomButton(
  //                         onPressed: () {},
  //                         title: "Place Bid",
  //                         titleStyle: TextStyle(
  //                             color: const Color(0xffFFFFFF),
  //                             fontSize: size.width * 0.01),
  //                         buttonColor: const Color(0xffE9D7A7).withOpacity(0.7),
  //                       ))
  //                     ],
  //                   )
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
