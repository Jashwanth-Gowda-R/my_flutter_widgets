import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;
  // List<Widget> widgets = [
  // const Center(
  //   child: Text(
  //     'Home',
  //   ),
  // ),
  // const Center(
  //   child: Text(
  //     'Search',
  //   ),
  // ),
  // const Center(
  //   child: Text(
  //     'Add',
  //   ),
  // ),
  // const Center(
  //   child: Text(
  //     'profile',
  //   ),
  // ),
  // ];

  final PageController _pageController = PageController();

  void selectedIndexOnTap(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navbar'),
        backgroundColor: Colors.greenAccent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: (int index) => selectedIndexOnTap(index),
      ),
      // body: Container(
      //   child: widgets[selectedIndex],
      // ),
      body: PageView(
        controller: _pageController,
        children: const [
          Center(
            child: Text(
              'Home',
            ),
          ),
          Center(
            child: Text(
              'Search',
            ),
          ),
          Center(
            child: Text(
              'Add',
            ),
          ),
          Center(
            child: Text(
              'profile',
            ),
          ),
        ],
      ),
    );
  }
}
