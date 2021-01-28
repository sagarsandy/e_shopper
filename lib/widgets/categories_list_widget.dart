import 'package:e_shopper/models/category.dart';
import 'package:e_shopper/widgets/category_widget.dart';
import 'package:flutter/material.dart';

class CategoriesListWidget extends StatelessWidget {
  final List<Category> allCategories = [
    Category(
      id: "1",
      title: "Cakes",
      description: "Best yummy yummy cakes !!",
      imageUrl:
          "https://i1.fnp.com/images/pr/l/cream-drop-chocolate-cake_1.jpg",
    ),
    Category(
      id: "2",
      title: "Chocolates",
      description: "All type of chocolates available here !!",
      imageUrl: "https://img.giftstoindia24x7.com/ASP_Img/GTI416432.jpg",
    ),
    Category(
      id: "3",
      title: "Juice",
      description: "Cool cool.. Cool drinks",
      imageUrl:
          "https://www.news-medical.net/image.axd?picture=2018%2F4%2Fshutterstock_1By_stockcreations.jpg",
    ),
    Category(
      id: "4",
      title: "Biscuits",
      description: "Mouth full of biscuits",
      imageUrl:
          "https://a.rgbimg.com/users/2/2h/2heads_advertising/300/mf89R0u.jpg",
    ),
    Category(
      id: "5",
      title: "Breads",
      description: "Never before breads",
      imageUrl:
          "https://www.melskitchencafe.com/wp-content/uploads/french-bread2-480x270.jpg",
    ),
    Category(
      id: "6",
      title: "Pastries",
      description: "Small bite pastries",
      imageUrl:
          "https://i.pinimg.com/originals/8d/cd/13/8dcd131ff759bc178cdfd3f6d7ae6e2c.jpg",
    ),
    Category(
      id: "7",
      title: "Drinks",
      description: "Single sip juice",
      imageUrl:
          "https://content3.jdmagicbox.com/comp/def_content/soft-drink-retailers/shutterstock-284053361-soft-drink-retailers-2-dyp5o.jpg?clr=3e3e28",
    ),
    Category(
      id: "8",
      title: "Snacks",
      description: "Single bite snacks",
      imageUrl:
          "https://cdn-a.william-reed.com/var/wrbm_gb_food_pharma/storage/images/publications/food-beverage-nutrition/foodnavigator-asia.com/article/2020/07/02/from-convenience-to-conscious-covid-19-pandemic-leads-to-shift-in-snacking-priorities-experts/11536449-1-eng-GB/From-convenience-to-conscious-Covid-19-pandemic-leads-to-shift-in-snacking-priorities-experts_wrbm_large.jpg",
    ),
    Category(
      id: "9",
      title: "Sweets",
      description: "Start with sweet",
      imageUrl:
          "https://www.dailynews.com/wp-content/uploads/2020/07/iStock-1154896831-1.jpg?w=300",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          childAspectRatio: 3 / 3,
          mainAxisSpacing: 1,
        ),
        itemCount: allCategories.length,
        itemBuilder: (ctx, i) => CategoryWidget(allCategories[i], i),
      ),
    );
  }
}
