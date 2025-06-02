import 'package:e_commerce_application/common/widgets/app_bar.dart';
import 'package:e_commerce_application/common/widgets/carticon.dart';
import 'package:e_commerce_application/common/widgets/title_bar.dart';
import 'package:e_commerce_application/utils/constants/image_strings.dart';
import 'package:e_commerce_application/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/grid_layout.dart';
import '../homeScreen/search_bar.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                pinned: true,
                floating: true,
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
                        hintTextColor: Colors.white,
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
              )
            ];
          },
          body: Container(
            color: Colors.purple,
          )),
    );
  }
}

class BrandCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TGridLayoutBuilder(
        mainAxisExtent: 80,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Image(
                      image: AssetImage(TImageStrings.brandLogos[index]),
                      height: TSizes.mdIcon,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            TImageStrings.brandNames[index],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          const Icon(Iconsax.verify5, size: 16),
                        ],
                      ),
                      Text(
                        "256 Products",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  const BrandCard({
    super.key,
  });
}
