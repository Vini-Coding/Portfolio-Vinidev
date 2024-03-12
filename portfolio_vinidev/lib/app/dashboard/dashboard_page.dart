import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_vinidev/app/core/theme/portfolio_theme.dart';
import 'package:portfolio_vinidev/app/dashboard/home/home_view.dart';
import 'package:portfolio_vinidev/app/dashboard/the_guy/the_guy_view.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../core/theme/portfolio_color_scheme.dart';

class DashboardPage extends StatefulWidget {
  static const routeName = '/';
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final ItemScrollController _itemScrollController = ItemScrollController();
  final ScrollController _scrollController = ScrollController();
  final ItemPositionsListener _itemPositionsListener =
      ItemPositionsListener.create();
  final onMenuHover = Matrix4.identity()..scale(1);
  int menuIndex = 0;
  final List<String> menuItems = [
    "Home",
    "The Guy",
  ];

  final List<Widget> viewsList = [
    const HomeView(),
    const TheGuyView(),
  ];

  Future<void> scrollTo({required int indexView}) async {
    _itemScrollController
        .scrollTo(
      index: indexView,
      duration: const Duration(seconds: 2),
      curve: Curves.fastLinearToSlowEaseIn,
    )
        .whenComplete(() {
      setState(() {
        menuIndex = indexView;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      menuIndex =
          _itemPositionsListener.itemPositions.value.iterator.current.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: portfolioTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: portfolioTheme.backgroundColor,
        titleSpacing: 30,
        elevation: 0,
        toolbarHeight: screenSize.height * 0.12,
        scrolledUnderElevation: 0,
        title: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 768) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: screenSize.width * 0.01),
                  Image.asset("assets/images/logo/logo.png", width: 130),
                  const Spacer(),
                  SizedBox(
                    height: 30,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            scrollTo(indexView: index);
                          },
                          borderRadius: BorderRadius.circular(100),
                          hoverColor: Colors.transparent,
                          onHover: (value) {
                            setState(
                              () {
                                if (value) {
                                  menuIndex = index;
                                } else {
                                  menuIndex = 0;
                                }
                              },
                            );
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            transform: menuIndex == index ? onMenuHover : null,
                            alignment: Alignment.center,
                            child: Text(
                              menuItems[index],
                              style: portfolioTheme.textTheme.labelMedium
                                  ?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: portfolioColorScheme.primary,
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        width: screenSize.width * 0.02,
                      ),
                      itemCount: menuItems.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.015),
                ],
              );
            } else {
              return Row(
                children: [
                  Image.asset("assets/images/logo/logo.png", width: 130),
                  const Spacer(),
                  PopupMenuButton(
                    icon: const FaIcon(FontAwesomeIcons.bars),
                    position: PopupMenuPosition.under,
                    constraints: BoxConstraints.tightFor(
                      width: screenSize.width * 0.9,
                    ),
                    itemBuilder: (context) {
                      return menuItems
                          .asMap()
                          .entries
                          .map(
                            (element) => PopupMenuItem(
                              child: Text(
                                element.value,
                                style: portfolioTheme.textTheme.labelMedium,
                              ),
                              onTap: () => scrollTo(
                                indexView: element.key,
                              ),
                            ),
                          )
                          .toList();
                    },
                  ),
                ],
              );
            }
          },
        ),
      ),
      body: ScrollablePositionedList.builder(
        itemCount: viewsList.length,
        itemScrollController: _itemScrollController,
        itemPositionsListener: _itemPositionsListener,
        itemBuilder: (context, index) {
          return viewsList[index];
        },
      ),
    );
  }
}
