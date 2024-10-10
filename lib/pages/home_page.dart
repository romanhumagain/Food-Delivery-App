import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_current_location.dart';
import 'package:food_delivery_app/components/my_description.dart';
import 'package:food_delivery_app/components/my_drawer.dart';
import 'package:food_delivery_app/components/my_sliver_appbar.dart';
import 'package:food_delivery_app/components/my_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppbar(
                    title: MyTabBar(tabController: _tabController),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Divider(
                          indent: 25,
                          endIndent: 25,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        MyCurrentLocation(),
                        MyDescription()
                      ],
                    )),
              ],
          body: TabBarView(controller: _tabController, children: [
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Text("Home");
                }),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Text("Profile");
                }),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Text("Settings");
                })
          ]),



            ),
    );
  }
}
