import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uang_bijak/presentation/profile/widgets/row_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50.0,
            ),
            Center(
              child: Column(
                children: [
                  const Image(
                    image: CachedNetworkImageProvider(
                      "https://avatar.iran.liara.run/public/31",
                    ),
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  const Text(
                    "Full Name",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "@your_username",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            const RowMenu(
              title: "Account",
              subTitle: "Security, Edit Profile",
              icon: CupertinoIcons.person_fill,
            ),
            const SizedBox(
              height: 16.0,
            ),
            const RowMenu(
              title: "Privacy",
              subTitle: "Account Privacy",
              icon: CupertinoIcons.lock_circle,
            ),
            const SizedBox(
              height: 16.0,
            ),
            const RowMenu(
              title: "Languages",
              subTitle: "Change app languages",
              icon: CupertinoIcons.globe,
            ),
            const SizedBox(
              height: 16.0,
            ),
            const RowMenu(
              title: "Invite a friend",
              icon: CupertinoIcons.person_2_fill,
            ),
            const SizedBox(
              height: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}
