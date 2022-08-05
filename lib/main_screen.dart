import 'package:assignment_4_to_do_app/infomation_list.dart';
import 'package:assignment_4_to_do_app/providers/to_do_provider.dart';
import 'package:assignment_4_to_do_app/widgets/list_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:15.0,top:15),
            child: Text("Done : ${Provider.of<ToDoProvider>(context).getTotalTaskDone()}",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w700),),
          )
        ],
        centerTitle: false,
        title: const Text("To Do App",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:8.0),
        child: ListView(
              children: informationList.map((item){
                return ListTileWidget(item);
              }).toList(),
            ),
      ),
    );
  }
}

