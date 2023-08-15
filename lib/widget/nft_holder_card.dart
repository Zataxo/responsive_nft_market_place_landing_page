import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_page/widget/custome_button.dart';

class NftHolderCard extends StatefulWidget {
  NftHolderCard(
      {Key? key,
      required this.isHover,
      required this.indx,
      required this.selectedItem,
      required this.infoList})
      : super(key: key);
  bool isHover;
  int indx;
  int selectedItem;
  List<String> infoList;

  @override
  State<NftHolderCard> createState() => _NftHolderCardState();
}

class _NftHolderCardState extends State<NftHolderCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (event) {
        // print(isHover);
        widget.isHover = true;
        widget.selectedItem = widget.indx;
        setState(() {});
      },
      onExit: (event) {
        widget.isHover = false;
        setState(() {});
      },
      child: Container(
        color: const Color(0xff3D2942),
        width: size.width * 0.2,
        height: size.height * 0.3,
        padding: const EdgeInsets.all(10.0),
        child: Material(
          elevation:
              widget.selectedItem == widget.indx && widget.isHover ? 10 : 0,
          color: const Color(0xff3D2942),
          shadowColor: const Color(0xffE03054),
          animationDuration: const Duration(seconds: 2),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  widget.infoList[widget.indx],
                  width: size.width * 1,
                  height: size.height * 1,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "imgs/profile_image1.png",
                          height: size.height * 0.04,
                          // width: size.width * 0.1,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.01),
                          child: Column(
                            children: [
                              Text(
                                "Virtual Art",
                                style: TextStyle(
                                    color: const Color(0xffF5FBF2),
                                    fontSize: size.width * 0.01),
                              ),
                              Text(
                                "by @wzard",
                                style: TextStyle(
                                    color: const Color(0xffBDAAC1),
                                    fontSize: size.width * 0.008),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          "icons/like.svg",
                          width: size.width * 0.01,
                        ),
                        Text(
                          "92",
                          style: TextStyle(
                              color: const Color(0xff76607A),
                              fontSize: size.width * 0.008),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Current Bid",
                            style: TextStyle(
                                color: const Color(0xff76607A),
                                fontSize: size.width * 0.01)),
                        Text("4.89 ETH",
                            style: TextStyle(
                                color: const Color(0xffF5FBF2),
                                fontSize: size.width * 0.01)),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: CustomButton(
                          onPressed: () {},
                          title: "Place Bid",
                          titleStyle: TextStyle(
                              color: const Color(0xffFFFFFF),
                              fontSize: size.width * 0.01),
                          buttonColor: const Color(0xffE9D7A7).withOpacity(0.7),
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
