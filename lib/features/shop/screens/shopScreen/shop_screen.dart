import 'package:e_commerce_application/common/widgets/app_bar.dart';
import 'package:e_commerce_application/common/widgets/carticon.dart';
import 'package:e_commerce_application/common/widgets/title_bar.dart';
import 'package:e_commerce_application/utils/constants/image_strings.dart';
import 'package:e_commerce_application/utils/constants/sizes.dart';
import 'package:e_commerce_application/utils/device/deviceutils.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/grid_layout.dart';
import '../../../../common/widgets/tab_bar.dart';
import '../homeScreen/product_tile.dart';
import '../homeScreen/search_bar.dart';
import 'brand_card.dart';
import 'brand_showcase.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: TImageStrings.shopCategoriesIcon.length,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            "Shop",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [CartIcon()],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                // pinned: true,
                floating: true,
                pinned: true,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: TSizes.defaultSpaceOG),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(
                        height: TSizes.defaultItemSpace,
                      ),

                      TSearchBar(
                        padding: EdgeInsets.zero,
                        backgroundColor: Colors.transparent,
                        textColor: Colors.white,
                        hintTextColor: TDeviceUtils.isDarkMode(context)
                            ? Colors.white
                            : Colors.black54,
                      ),
                      SizedBox(
                        height: TSizes.defaultItemSpace,
                      ),
                      TitleBar(
                          title: "Featured Brands", actionText: "View all"),

                      /// brand Container:
                      BrandCard(),
                    ],
                  ),
                ),
                bottom: TTabBar(tabs: [
                  for (var i = 0;
                      i < TImageStrings.shopCategoriesIcon.length;
                      i++)
                    Tab(
                      text: TImageStrings.categoryTitles[i],
                      icon: Icon(
                        TImageStrings.shopCategoriesIcon[i],
                        size: TSizes.smIcon,
                      ),
                    )
                ]),
              )
            ];
          },
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    BrandShowCase(),
                    BrandShowCase(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TitleBar(
                        title: "You May Like ",
                        actionText: 'View All ',
                      ),
                    ),
                    TGridLayoutBuilder(
                      mainAxisExtent: 288,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return ProductWidgetVertical(
                          imagePath: TImageStrings.categoryImages.last,
                          title: "Product 1",
                          brand: "Brand A",
                          price: "29.99",
                        );
                      },
                    ),
                  ],
                ),
              ),
              Column(),
              Column(),
              Column(),
              Column(),
              Column(),
              Column(),
            ],
          ),
        ),
      ),
    );
  }
}
