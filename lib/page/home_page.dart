import 'package:api_test/res/app_images.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final tabScreen = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        body: tabScreen[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage(AppImages.homeIconItem),
                width: 24,
                height: 24,
              ),
              label: 'Trang Chủ',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage(AppImages.chatIconItem),
                width: 24,
                height: 24,
              ),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage(AppImages.notifiicationItem),
                width: 24,
                height: 24,
              ),
              label: 'Thông báo',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage(AppImages.userIconItem),
                width: 24,
                height: 24,
              ),
              label: 'Cá Nhân',
            ),
          ],
        ),
      ),
    );
  }
}
