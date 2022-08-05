import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/to_do_provider.dart';


class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
            height: AppBar().preferredSize.height * 1.7,
            width: MediaQuery.of(context).size.width,
            color:const Color.fromARGB(255, 33, 191, 243),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
          const Padding(
            padding: EdgeInsets.only(left:17.0,top:35),
            child:     Text("To Do List",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white),),
),
 Padding(
            padding: const EdgeInsets.only(right:17.0,top:35),
            child:     Text("Done : ${Provider.of<ToDoProvider>(context).getTotalTaskDone()}",style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white),),
),
            ]),
          );
  }
}