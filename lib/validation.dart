import 'formula.dart';

void validate(String nameOfStation){
  
  List<String> timings = ["08:30" , "08:40" , "08:50" , "09:00" , "09:10" , "09:20" , "09:30" , "09:40" , "09:50" , "10:00" , "10:10" , "10:20" , "10:30" , "10:40" , "10:50" , "11:00" , "11:10" , "11:20" , "11:30" , "11:40" , "11:50" , "12:00" , "12:10" , "12:20" , "12:30" , "12:40" , "12:50" , "13:00" , "13:10" , "13:20" , "13:30" , "13:40" , "13:50" , "14:00" , "14:10" , "14:20" , "14:30" , "14:40" , "14:50" , "15:00" , "15:10" , "15:20" , "15:30" , "15:40" , "15:50" , "16:00" , "16:10" , "16:20" , "16:30" , "16:40" , "16:50" , "17:00" , "17:10" , "17:20" , "17:30" , "17:40" , "17:50" , "18:00" , "18:10" , "18:20" , "18:30" , "18:40" , "18:50"];
  List<int> ageList = [21,22,25,28,31,34,37,40,43,46,49,52,55,57,58];
  
  void ageValidationLoop(Function(int,List) f){
    ageList.forEach((age) {
      var list = new List();
        f(age, list);
      print(age);
      print(list);
    });
  }
  
  void pushUpIteration(int age, List list) { 
    for(var i=60;i!=0;i--) list.add(pointsForPushUps(age,i));
  }
  
  void sitUpIteration(int age, List list) { 
    for(var i=60;i!=0;i--) list.add(pointsForSitUps(age,i));
  }
  
  void runIteration(int age, List list) { 
    timings.forEach( (time) => list.add(pointsForRunning(age, time)) );
  }
  
  if(nameOfStation == "pushup") ageValidationLoop(pushUpIteration);
  else if (nameOfStation == "situp") ageValidationLoop(sitUpIteration);
  else if (nameOfStation == "run") ageValidationLoop(runIteration);
}