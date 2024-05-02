import 'package:bin_omaira_motors/features/search_filter/widgets/search_filter_car_type_card.dart';
import 'package:flutter/material.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';

class SearchFilterCarTypeList extends StatefulWidget {
  const SearchFilterCarTypeList({Key? key}) : super(key: key);

  @override
  _SearchFilterCarTypeListState createState() =>
      _SearchFilterCarTypeListState();
}

class _SearchFilterCarTypeListState extends State<SearchFilterCarTypeList> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 106.height,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return SearchFilterCarTypeCard(
            isSelected: index == selectedIndex,
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
          );
        },
        itemCount: 4,
        separatorBuilder: (context, index) {
          return SizedBox(width: 16.width);
        },
      ),
    );
  }
}
