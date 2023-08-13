import 'package:flutter/material.dart';
import 'package:responsive_page/utils/info.dart';

class ListItems extends StatefulWidget {
  const ListItems({Key? key}) : super(key: key);

  @override
  State<ListItems> createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  int selecteditem = -1;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: size.width * 0.05,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => _buildUpperList(
          index,
        ),
        itemCount: Info.headerList.length,
      ),
    );
  }

  Widget _buildUpperList(int _indx) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      // onHover: (value) {
      //   print(value);
      // },
      onTap: () {
        selecteditem = _indx;
        setState(() {});
      },
      child: Text(
        Info.headerList[_indx],
        style: TextStyle(
            color: _indx == selecteditem
                ? const Color(0xffFFCE4E)
                : const Color(0xffFFFFFF)),
      ),
    );
  }
}
