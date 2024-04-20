import 'package:flutter/material.dart';
import 'package:music_player/app/common/extension/size_extensions.dart';

import 'package:music_player/app/common/values/color.dart';
import 'package:music_player/app/common/values/images.dart';

class RootView extends StatefulWidget {
  const RootView({super.key});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectTab = 0;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    tabController?.addListener(() {
      selectTab = tabController?.index ?? 0;
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: [
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: AppColor.bg, boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 5,
            offset: Offset(0, -3),
          ),
        ]),
        child: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: TabBar(
            controller: tabController,
            indicatorColor: Colors.transparent,
            indicatorWeight: 1,
            labelColor: AppColor.primary,
            labelStyle: TextStyle(fontSize: 10.0.sp),
            unselectedLabelColor: AppColor.primaryText28,
            unselectedLabelStyle: TextStyle(fontSize: 10.0.sp),
            tabs: [
              Tab(
                text: 'Home',
                icon: Image.asset(
                  selectTab == 0 ? AssetsImages.homeSelected : AssetsImages.homeUnselected,
                  width: 20,
                  height: 20,
                ),
              ),
              Tab(
                text: 'Songs',
                icon: Image.asset(
                  selectTab == 1 ? AssetsImages.songselected : AssetsImages.songUnselected,
                  width: 20,
                  height: 20,
                ),
              ),
              Tab(
                text: 'Settings',
                icon: Image.asset(
                  selectTab == 2 ? AssetsImages.settingselected : AssetsImages.settingUnselected,
                  width: 20,
                  height: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
