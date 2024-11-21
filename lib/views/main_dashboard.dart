import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/globles/app_colors.dart';
import 'package:portfolio/globles/app_strings.dart';
import 'package:portfolio/globles/my_text.dart';
import 'package:portfolio/globles/app_text_style.dart';
import 'package:portfolio/views/contact_me.dart';
import 'package:portfolio/views/footer_class.dart';
import 'package:portfolio/views/about_me.dart';
import 'package:portfolio/views/home_page.dart';
import 'package:portfolio/views/my_portfolio.dart';
import 'package:portfolio/views/my_service.dart';
import 'package:portfolio/views/mobile_menu.dart';
import 'package:portfolio/widget/utils/context_extension.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  final Matrix4 onMenuHover = Matrix4.identity()..scale(1.0);

  final List<Widget> screenList = const [
    HomePage(),
    AboutMe(),
    MyService(),
    MyPortfolio(),
    ContactUs(),
    FooterClass(),
  ];

  final ScrollController scrollController = ScrollController();
  bool isFabVisible = false;
  int currentSectionIndex = 0;
  int? hoveredMenuIndex;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      setState(() {
        isFabVisible = scrollController.offset > 0;

        final calculatedIndex = (scrollController.offset / context.height).floor();
        currentSectionIndex = calculatedIndex >= 0 && calculatedIndex < screenList.length ? calculatedIndex : currentSectionIndex;
      });
    });
  }

  /// Scroll To Top On Tap Of Floating Action Button
  void scrollToTop() {
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  /// Scroll To Selection Of Menu Taps
  void scrollToSection(int index) {
    final targetOffset = index * context.height;
    scrollController.animateTo(
      targetOffset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: isFabVisible
          ? Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  scrollToTop();
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.themeColor,
                  ),
                  child: const Icon(
                    Icons.arrow_upward,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          : null,
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        toolbarHeight: 90,
        elevation: 0,
        title: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 768) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  portfolio,
                  style: AppTextStyles.headerTextStyle(),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const MobileMenu(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.menu_sharp,
                    size: 32,
                    color: Colors.white,
                  ),
                ),
              ],
            );
          } else {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: (context.width * 0.08)),
              child: Row(
                children: [
                  MyText(
                    portfolio,
                    style: AppTextStyles.headerTextStyle(),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 30,
                    child: ListView.separated(
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          scrollToSection(index);
                        },
                        borderRadius: BorderRadius.circular(100),
                        onHover: (value) {
                          setState(() {
                            hoveredMenuIndex = value ? index : null;
                          });
                        },
                        child: buildNavBarAnimatedContainer(
                          index,
                          hoveredMenuIndex == index,
                        ),
                      ),
                      separatorBuilder: (context, child) => const SizedBox(
                        width: 8,
                      ),
                      itemCount: menuItems.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
            );
          }
        }),
      ),
      body: ListView.builder(
        controller: scrollController,
        itemCount: screenList.length,
        itemBuilder: (context, index) {
          return screenList[index];
        },
      ),
    );
  }

  buildNavBarAnimatedContainer(int index, bool isHovered) {
    final isActive = currentSectionIndex == index;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      alignment: Alignment.center,
      width: isHovered ? 100 : 95,
      transform: isHovered ? onMenuHover : null,
      child: Text(
        menuItems[index],
        style: AppTextStyles.headerTextStyle(
          color: isActive ? AppColors.themeColor : (isHovered ? AppColors.themeColor : AppColors.white),
          fontSize: 20,
        ),
      ),
    );
  }
}
