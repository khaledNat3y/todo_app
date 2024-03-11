import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/ui/providers/list_provider.dart';
import 'package:todo_app/ui/screens/home/tabs/list_tab/todo_widget.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_theme.dart';

class EditTask extends StatefulWidget {
  static const String routeName = "editTask";
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  EditTask({super.key,});

  @override
  State<EditTask> createState() => _EditTaskState();
}

class _EditTaskState extends State<EditTask> {
  DateTime selectDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    ListProvider listProvider = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.15,
        title: Text("To Do List",style: AppTheme.appBarTextStyle,),
        backgroundColor: AppColors.primiary,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.height * 0.9,
        height: MediaQuery.of(context).size.height * 0.79,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Edit Task",style: AppTheme.bottomTitleTextStyle,textAlign: TextAlign.center,),
            TextField(
              decoration: InputDecoration(
                label: Text(listProvider.titleController.text),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                label: Text(listProvider.descriptionController.text),
              ),
            ),
            SizedBox(height: 20,),
            Text("Select date",style: AppTheme.bottomTitleTextStyle,),
            SizedBox(height: 20,),
            Text(DateFormat.MMMMEEEEd().format(selectDate),
              style: AppTheme.bottomTitleTextStyle.copyWith(color: AppColors.grey),textAlign: TextAlign.center,),
            SizedBox(height: 80,),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: AppColors.primiary,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Text("Save Changes",style: TextStyle(color: AppColors.white,fontSize: 18),textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}
