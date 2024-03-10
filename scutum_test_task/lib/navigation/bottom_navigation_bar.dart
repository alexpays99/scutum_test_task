import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scutum_test_task/core/utils/app_colors.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const BottomNavigationBarWidget({
    super.key,
    required this.navigationShell,
  });

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  final _navigationIndexes = [0, 1];

  void _onTap(index) {
    setState(() {
      widget.navigationShell.goBranch(
        index,
        initialLocation: index == widget.navigationShell.currentIndex,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButton: InkWell(
        onTap: () {},
        child: Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amber[400],
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
      body: widget.navigationShell,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: AppColors.categorySelectedColor,
        icons: const [
          Icons.home_outlined,
          Icons.favorite_outline,
        ],
        activeIndex: widget.navigationShell.currentIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) => _onTap(index),
        leftCornerRadius: 32,
        rightCornerRadius: 32,
      ),
      // bottomNavigationBar: BottomAppBar(
      //   shape: const CircularNotchedRectangle(),
      //   notchMargin: 5.0,
      //   child: Row(
      //     mainAxisSize: MainAxisSize.max,
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: <Widget>[
      //       IconButton(
      //         icon: const Icon(Icons.home_outlined),
      //         onPressed: () => _onTap(_navigationIndexes[0]),
      //       ),
      //       IconButton(
      //         icon: const Icon(Icons.favorite_outline),
      //         onPressed: () => _onTap(_navigationIndexes[1]),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
