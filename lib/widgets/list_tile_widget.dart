import 'package:assignment_4_to_do_app/models/information.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/to_do_provider.dart';

class ListTileWidget extends StatelessWidget {
  final Information info;
  const ListTileWidget(this.info);

  @override
  Widget build(BuildContext context) {
     Provider.of<ToDoProvider>(context).getTempValue();
   return  Padding(
     padding: const EdgeInsets.only(left:15.0,right:15,bottom: 8),
     child: ListTile(
       // ignore: prefer_const_constructors
       trailing:Icon(
         size: 11,
         Icons.arrow_forward_ios),
       subtitle: Text(info.date,style: info.taskDone?const TextStyle(decoration: TextDecoration.lineThrough):null,),
       tileColor: Colors.grey[200],
       leading: GestureDetector(
         onTap: (){
           Provider.of<ToDoProvider>(context,listen: false).clickToComplete(info);
         },
         child: CircleAvatar(
           radius: 25,
           backgroundColor: Colors.white,
           child:info.taskDone?const Center(child: Icon(Icons.check)): null
         ),
       ),
       title: Text(info.title,style: info.taskDone?const TextStyle(decoration: TextDecoration.lineThrough):null,),
     ),
   );
  }
}