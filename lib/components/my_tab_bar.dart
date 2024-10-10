import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController ;
  MyTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
          dividerColor:Theme.of(context).colorScheme.primary,
          tabs:const [
            Tab(icon: Icon(Icons.home, size: 20,),),
            Tab(icon: Icon(Icons.person, size: 20,),),
            Tab(icon: Icon(Icons.settings, size: 20,),)
      ]),
    );
  }
}
