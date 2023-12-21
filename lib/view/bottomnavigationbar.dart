import 'package:bytetalk/view/Contact.dart';
import 'package:bytetalk/view/call.dart';
import 'package:bytetalk/view/message.dart';
import 'package:bytetalk/view/settings.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar_v2/motion-badge.widget.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';


class bottomnavigationbar extends StatefulWidget {
  const bottomnavigationbar({super.key});

  @override
  State<bottomnavigationbar> createState() => _bottomnavigationbarState();
}

class _bottomnavigationbarState extends State<bottomnavigationbar> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MotionTabBar(
        
     
    initialSelectedTab: "Call",
    labels: const ["Message", "Call", "contact", "Settings"],
    icons: const [Icons.message, Icons.call, Icons.contact_page, Icons.settings],
    

   
    badges: [
      
      const MotionBadgeWidget(
        text: '99+',
        textColor: Colors.white, 
        color: Colors.red,
        size: 18, 
      ),

      
      Container(
        color: Colors.black,
        padding: const EdgeInsets.all(2),
        child: const Text(
          '48',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),

      
      null,

      const MotionBadgeWidget(
        isIndicator: true,
        color: Colors.red, 
        size: 5, 
        show: true, 
      ),
    ],
    tabSize: 50,
    tabBarHeight: 55,
    textStyle: const TextStyle(
      fontSize: 12,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    tabIconColor: Colors.blue[600],
    tabIconSize: 28.0,
    tabIconSelectedSize: 26.0,
    tabSelectedColor: Colors.blue[900],
    tabIconSelectedColor: Colors.white,
    tabBarColor: const Color(0xFFAFAFAF),
    onTabItemSelected: (int value) {
      setState(() {
        _tabController.index = value;
      });

      
    },
    
  ),
  body: TabBarView(
    controller: _tabController,
    
    children: [
    message(),
    call(),
    contact(),
    settings()
    
    
    
  ]),
    );
  }
}