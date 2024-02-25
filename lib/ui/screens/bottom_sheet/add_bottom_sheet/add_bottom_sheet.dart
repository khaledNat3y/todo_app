import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_theme.dart';

class AddBottomSheet extends StatefulWidget {
  const AddBottomSheet({super.key});

  @override
  State<AddBottomSheet> createState() => _AddBottomSheetState();
}

class _AddBottomSheetState extends State<AddBottomSheet> {
  DateTime selectDate = DateTime.now();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      padding: const EdgeInsets.all(16),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text("Add new Task",
            textAlign: TextAlign.center,),
           TextField(
            controller: titleController,
            cursorColor: AppColors.primiary,
            decoration: const InputDecoration(
              labelText: "Enter your task",
              labelStyle: TextStyle(fontWeight:
              FontWeight.normal, color: Colors.grey,fontSize: 20),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey),
              )
            ),
          ),
          TextField(
            controller: descriptionController,
            cursorColor: AppColors.primiary,
            decoration: const InputDecoration(
              labelText: "Description",
              labelStyle: TextStyle(fontWeight:
              FontWeight.normal, color: Colors.grey,fontSize: 20),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.grey),
                )
            ),
          ),
          SizedBox(height: 12,),
          Text("Select date",style: AppTheme.bottomTitleTextStyle.
          copyWith(fontWeight: FontWeight.w600),textAlign: TextAlign.start,),
          SizedBox(height: 12,),
          InkWell(
            onTap: (){
              showMyDataPicker();
            },
              child: Text("${selectDate.day}/${selectDate.month}/${selectDate.year}",textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.grey,fontSize: 18),)),
          const Spacer(),
          ElevatedButton(
              onPressed: (){},
              child: const Text("Add",
                style: TextStyle(color: AppColors.white,fontSize: 19),))
        ],
      ),
    );
  }

  void showMyDataPicker() async {
    selectDate = (await showDatePicker(context: context,
        initialDate: selectDate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)))) ?? selectDate;
    setState(() {});
  }
}
