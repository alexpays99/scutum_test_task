import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        onTap: () {
          // handle button press
        },
        child: Container(
          width: 56,
          height: 56,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      body: widget.navigationShell,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home_outlined),
              onPressed: () => _onTap(_navigationIndexes[0]),
            ),
            IconButton(
              icon: const Icon(Icons.favorite_outline),
              onPressed: () => _onTap(_navigationIndexes[1]),
            ),
          ],
        ),
      ),
    );
  }
}
