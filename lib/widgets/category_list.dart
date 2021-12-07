import 'package:flutter/material.dart';
import 'package:sales_app/utils/constants.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = ['In Theater', 'Box Office', 'Comming Soon'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      // color: Colors.blue,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return buildCategory(index, context);
        },
      ),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: index == selectedCategory
                        ? kTextColor2
                        : Colors.grey[300],
                  ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPadding / 2),
              height: 4,
              width: 40,
              color: index == selectedCategory
                  ? kSecondaryColor
                  : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
