import 'package:e_commerce_application/common/widgets/app_bar.dart';
import 'package:e_commerce_application/common/widgets/title_bar.dart';
import 'package:e_commerce_application/features/shop/screens/homeScreen/curvedEdges/home_clip.dart';
import 'package:e_commerce_application/utils/constants/sizes.dart';
import 'package:e_commerce_application/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/device/deviceutils.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  ImageClip(
                    imagePath: "assets/images/profile/clip.gif",
                    height: TDeviceUtils.screenHeight(context) * 0.3,
                  ),
                ],
              ),
              TAppBar(
                title: Text(
                  "Account",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: Colors.white),
                ),
                actions: [
                  IconButton(
                    icon: Icon(Iconsax.edit, color: Colors.white),
                    onPressed: () {
                      // Navigate to settings screen
                    },
                  ),
                ],
              ),
              UserNEmail()
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TitleBar(
                    title: "Account Settings",
                    actionText: "",
                  ),
                  AccountSettingsWidget(),
                  SizedBox(height: TSizes.defaultItemSpace),
                  TitleBar(
                    title: "App Settings",
                    actionText: "",
                  ),
                  AppSettingsWidget(),
                  SizedBox(height: TSizes.defaultItemSpace),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("LogOut"))),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AppSettingsWidget extends StatelessWidget {
  const AppSettingsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Iconsax.document_upload,
              color: TDeviceUtils.isDarkMode(context)
                  ? Colors.white
                  : Colors.black,
            ),
            title: Text(
              "Load Data",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            subtitle: Text(
              "Load your data to the firebase server",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onTap: () {
              // Handle notification settings tap
            },
          ),

          // ListTile with toggle switch
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: TTextStrings.appSettingsOptions.length,
              itemBuilder: (context, index) {
                return ListTile(
                    leading: Icon(
                      TTextStrings.appSettingsIcons[index],
                      color: TDeviceUtils.isDarkMode(context)
                          ? Colors.white
                          : Colors.black,
                    ),
                    title: Text(
                      TTextStrings.appSettingsOptions[index],
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    subtitle: Text(
                      "Manage your notification settings",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    trailing: Switch(
                      activeColor: TDeviceUtils.isDarkMode(context)
                          ? Colors.white
                          : Colors.black,
                      value: true, // Replace with actual state
                      onChanged: (value) {
                        // Handle toggle switch change
                      },
                    ));
              }),
        ],
      ),
    );
  }
}

class AccountSettingsWidget extends StatelessWidget {
  const AccountSettingsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(
            TTextStrings.settingsIcons[index],
            color:
                TDeviceUtils.isDarkMode(context) ? Colors.white : Colors.black,
          ),
          title: Text(
            TTextStrings.settingsOptions[index],
            style: Theme.of(context).textTheme.titleMedium,
          ),
          subtitle: Text(
            TTextStrings.settingsSubtitles[index],
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          onTap: () {
            // Handle setting tap
          },
        );
      },
    );
  }
}

class UserNEmail extends StatelessWidget {
  const UserNEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        top: 120.0,
      ),
      child: SizedBox(
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Karan Rabari",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Colors.white),
            ),
            SizedBox(height: TSizes.defaultItemSpace),
            Text("karanrabari150@gmail.com",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white))
          ],
        ),
      ),
    );
  }
}
