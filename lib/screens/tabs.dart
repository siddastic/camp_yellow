import 'package:cy_assignment/data/fake_data.dart';
import 'package:cy_assignment/screens/home_tab.dart';
import 'package:cy_assignment/widgets/touchable_opacity.dart';
import "package:flutter/material.dart";

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final pages = [
    for (var i = 0; i < 5; i++) const HomeTab(),
  ];
  int _selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    final view = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: pages[_selectedTabIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 20),
        margin: const EdgeInsets.only(bottom: 10),
        width: view.width,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey[800]!,
            ),
          ),
        ),
        child: Row(
          children: [
            for (var i = 0; i < 5; i++)
              Expanded(
                child: _BottomNavIcon(
                  isSelected: _selectedTabIndex == i,
                  icon: FakeData.tab_icons[i],
                  onTap: () => setState(() => _selectedTabIndex = i),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _BottomNavIcon extends StatelessWidget {
  final bool isSelected;
  final void Function()? onTap;
  final Widget icon;
  const _BottomNavIcon({
    Key? key,
    required this.isSelected,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      onTap: onTap,
      child: AnimatedOpacity(
        opacity: isSelected ? 1 : .3,
        duration: const Duration(milliseconds: 250),
        child: icon,
      ),
    );
  }
}
