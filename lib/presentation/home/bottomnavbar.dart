import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:major_project/presentation/bookmark/bookmark_screen.dart';
import 'package:major_project/presentation/home/home_screen.dart';
import 'package:sizer/sizer.dart';

import '../wall/wall_screen.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BottomNavConsumer();
  }
}

class BottomNavConsumer extends StatefulWidget {
  const BottomNavConsumer({Key? key}) : super(key: key);

  @override
  State<BottomNavConsumer> createState() => _BottomNavConsumerState();
}

class _BottomNavConsumerState extends State<BottomNavConsumer> {
  final _pageController = PageController(initialPage: 0);

  int maxCount = 3;

  final List<Widget> bottomBarPages = [
    const HomeScreen(),
    const WallScreen(),
    const BookmarkScreen(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _pageController,
          // physics: NeverScrollableScrollPhysics(),
          children: List.generate(
              bottomBarPages.length, (index) => bottomBarPages[index]),
        ),
        extendBody: true,
        bottomNavigationBar: (bottomBarPages.length <= maxCount)
            ? AnimatedNotchBottomBar(
                pageController: _pageController,
                notchColor: Theme.of(context).colorScheme.onSecondaryContainer,
                color: Colors.black,
                showBlurBottomBar: true,
                blurOpacity: 0.9,
                blurFilterX: 2.0,
                blurFilterY: 2.0,
                showShadow: false,
                itemLabelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                    fontSize: 8.sp),
                bottomBarItems: [
                  BottomBarItem(
                    inActiveItem: Icon(
                      Icons.home_outlined,
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
                    activeItem: const Icon(
                      Icons.home_filled,
                      color: Colors.black,
                    ),
                    itemLabel: 'Home',
                  ),
                  BottomBarItem(
                    inActiveItem: Icon(
                      Icons.add_to_photos_outlined,
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
                    activeItem: const Icon(
                      Icons.add_to_photos_sharp,
                      color: Colors.black,
                    ),
                    itemLabel: 'The Wall',
                  ),
                  BottomBarItem(
                    inActiveItem: Icon(
                      Icons.bookmark_outline,
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
                    activeItem: const Icon(
                      Icons.bookmark,
                      color: Colors.black,
                    ),
                    itemLabel: 'Bookmark',
                  ),
                ],
                onTap: (index) {
                  _pageController.animateToPage(index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                })
            : null);
  }
}
