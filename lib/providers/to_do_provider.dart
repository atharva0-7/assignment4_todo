
import 'package:assignment_4_to_do_app/models/information.dart';
import 'package:flutter/material.dart';

class ToDoProvider extends ChangeNotifier{

  int _totalTaskDone = 0;
 final bool _tempValueToListen = false;

  void clickToComplete(Information item)
  {
      if(item.taskDone == true)
      {
        _totalTaskDone--;
        item.taskDone = false;
      }else{
        _totalTaskDone++;
        item.taskDone = true;    
      }
     
      notifyListeners();
  }


  bool getTempValue()
  {
    return _tempValueToListen;
  }
  int getTotalTaskDone()
  {
    
    return _totalTaskDone;
  }


}