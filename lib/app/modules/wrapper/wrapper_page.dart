import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sgs/app/modules/about/about_module.dart';

import '../home/home_module.dart';

class WrapperPage extends StatefulWidget {
  final String title;
  const WrapperPage({Key key, this.title = 'Wrapper'}) : super(key: key);

  @override
  _WrapperPageState createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  final PageController controller = PageController();

  int _currentTabIndex = 0;

  void _onItemTapped(int index) {
    controller.jumpToPage(index);

    setState(() {
      _currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          RouterOutlet(module: HomeModule()),
          RouterOutlet(module: AboutModule()),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: controller,
        builder: (BuildContext context, snapshot) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (int pageIndex) => _onItemTapped(pageIndex),
            currentIndex: _currentTabIndex,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Sobre'),
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
