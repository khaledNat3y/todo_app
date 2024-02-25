import 'package:flutter/material.dart';
import 'package:todo_app/ui/screens/bottom_sheet/add_bottom_sheet/add_bottom_sheet.dart';
import 'package:todo_app/ui/screens/home/tabs/list_tab/list_tab.dart';
import 'package:todo_app/ui/screens/home/tabs/settings_tab/settings_tab.dart';
import 'package:todo_app/ui/screens/splash_screen/splash_screen.dart';
import 'package:todo_app/ui/utils/app_colors.dart';
import 'package:todo_app/ui/utils/app_theme.dart';

class Home extends StatefulWidget {
  static const routeName = "Home";
   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> tabs = [ListTab(), SettingTab()];
  int currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.15,
          title: Text("To Do List",style: AppTheme.appBarTextStyle,),
          backgroundColor: AppColors.primiary,
        ),
        body: tabs[currentTabIndex],
        floatingActionButton: buildFab(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: SizedBox(
          height: 90,
            child: buildBottomNavigationBar()),
      ),
    );
  }

  Widget buildBottomNavigationBar() => BottomAppBar(

    shape: const CircularNotchedRectangle(),
    notchMargin: 12,
    elevation: 0,
    clipBehavior: Clip.hardEdge,
    child: BottomNavigationBar(
        currentIndex: currentTabIndex,
        onTap: (newTabIndex){
          currentTabIndex = newTabIndex;
          setState(() {});
        },
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.list),label: "list",),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings"),
        ],

      ),
  );

  buildFab() => FloatingActionButton(
    onPressed: (){
      showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) {
            return Padding(
              padding: MediaQuery.of(context).viewInsets,
                child: AddBottomSheet());
          }
      );
    },
    child: Icon(Icons.add,color: AppColors.white,),
  shape: StadiumBorder(side: BorderSide(color: AppColors.white ,width: 4)),);
}
