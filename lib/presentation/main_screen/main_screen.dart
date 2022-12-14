import 'package:flutter/material.dart';
import 'package:growback/presentation/main_screen/home/home_screen.dart';
import 'package:growback/utils/app_color.dart';
import 'history/history_screen.dart';
import 'profile/profile_screen.dart';

class MainScreen extends StatefulWidget {
  final String text;
  const MainScreen({Key? key, required this.text}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  String textToSend = "asd";

  void archiveData() async {
    if (widget.text == "Success") {
      setState(() {
        textToSend = "Success";
      });
    }else{
      setState(() {
        textToSend = "as";
      });
    };
  }

  @override
  void initState() {
    archiveData();
    super.initState();
  }

  int _selectedIndex = 0;

  Widget body() {
    switch (_selectedIndex) {
      case 0:
        return HomeScreen(text: textToSend,);
        break;
      case 1:
        return HistoryScreen();
        break;
      case 2:
        return ProfileScreen(text: textToSend,);
        break;
      default:
        return HomeScreen(text: textToSend,);
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'My Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.primary,
        onTap: _onItemTapped,
      ),
    );
  }
}
