import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_theme.dart';

class TodoWidget extends StatelessWidget {
  const TodoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 22,horizontal: 30),
      padding: EdgeInsets.symmetric(vertical: 24,horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.white,
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.primiary,
            ),
            height: 62,
            width: 4,
            ),
          const Expanded(
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("play basket ball",
                  style: AppTheme.taskTitleTextStyle,),
                SizedBox(height: 10,),
                Text("23/2/2024",style: AppTheme.taskDescriptionTextStyle,),
              ],
            ),
          ),
           Container(
             padding: EdgeInsets.symmetric(horizontal: 16,vertical: 1),
             decoration: BoxDecoration(
               color: AppColors.primiary,
               borderRadius: BorderRadius.circular(12),
             ),
            child: IconButton(
                onPressed: () {

                },
                icon: const Icon(Icons.done,color: AppColors.white,size: 34,)),
          ),
        ],
      ),
    );
  }
}
