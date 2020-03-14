num getAgeGroup(age){
  int ageGroup;
  
  if (age < 22) ageGroup = 1;
  else if (age < 25) ageGroup = 2;
  else if (age < 28) ageGroup = 3;
  else if (age < 31) ageGroup = 4;
  else if (age < 34) ageGroup = 5;
  else if (age < 37) ageGroup = 6;
  else if (age < 40) ageGroup = 7;
  else if (age < 43) ageGroup = 8;
  else if (age < 46) ageGroup = 9;
  else if (age < 49) ageGroup = 10;
  else if (age < 52) ageGroup = 11;
  else if (age < 55) ageGroup = 12;
  else if (age < 58) ageGroup = 13;
  else if (age <= 60) ageGroup = 14;
  
  return ageGroup;
}

//Push up Formula
int pointsForPushUps(age,numOfPushUps){
  int ageGroup = getAgeGroup(age);
  int worst = 14 - (ageGroup-1);
  int best;
  
  int getBest(ageGroup){ 
    int bestRep;
    
    if(ageGroup < 9) bestRep = 60 - (ageGroup - 1); 
    else if (ageGroup < 13) bestRep = 60 - 9 - ((ageGroup - 9) * 2);
    else if (ageGroup <= 14) bestRep = 60 - 18 - ((ageGroup - 13) * 2);
    
    return bestRep;
  }
  
  best = getBest(ageGroup);
  
  //standard formula for 19 points & below for all age group
  if (numOfPushUps <= worst) return 0; 
  else if (numOfPushUps == worst+1) return 1;
  else if (numOfPushUps <= worst+2) return 2;
  else if (numOfPushUps <= worst+3) return 4;
  else if (numOfPushUps <= worst+4) return 6;
  else if (numOfPushUps <= worst+5) return 8;
  else if (numOfPushUps <= worst+6) return 9; 
  else if (numOfPushUps <= worst+7) return 10; 
  else if (numOfPushUps <= worst+8) return 11; 
  else if (numOfPushUps <= worst+9) return 12; 
  else if (numOfPushUps <= worst+10) return 13; 
  else if (numOfPushUps <= worst+11) return 14; 
  else if (numOfPushUps <= worst+13) return 15; 
  else if (numOfPushUps <= worst+16) return 16; 
  else if (numOfPushUps <= worst+19) return 17; 
  else if (numOfPushUps <= worst+22) return 18; 
  else if (numOfPushUps <= worst+25) return 19;
  
  // formula for 20 points & above
  if (ageGroup < 10){
    if (numOfPushUps <= best-17) return 20;
    else if (numOfPushUps <= best-13) return 21;
    else if (numOfPushUps <= best-9) return 22;
    else if (numOfPushUps <= best-5) return 23;
  }
  
  switch (ageGroup) {
    case 10:
      if (numOfPushUps <= 33) return 20; //best-16
      else if (numOfPushUps <= 36) return 21; //best-13
      else if (numOfPushUps <= 40) return 22; //best-9
      else if (numOfPushUps <= 44) return 23; //best-5
      break;
    case 11:
      if (numOfPushUps <= 32) return 20; //best-16 
      else if (numOfPushUps <= 35) return 21; //best-13
      else if (numOfPushUps <= 38) return 22; //best-9
      else if (numOfPushUps <= 42) return 23; //best-5
      break;
    case 12:
      if (numOfPushUps <= 31) return 20; //best-15
      else if (numOfPushUps <= 34) return 21; //best-12
      else if (numOfPushUps <= 37) return 22; //best-9
      else if (numOfPushUps <= 40) return 23; //best-5
      break;
    case 13:
      if (numOfPushUps <= 29) return 20; //best-14
      else if (numOfPushUps <= 32) return 21; //best-11
      else if (numOfPushUps <= 35) return 22; //best-8
      else if (numOfPushUps <= 38) return 23; //best-5
      break;
    case 14:
      if (numOfPushUps <= 28) return 20; //best-13
      else if (numOfPushUps <= 30) return 21; //best-10
      else if (numOfPushUps <= 33) return 22; //best-7
      else if (numOfPushUps <= 36) return 23; //best-4
      break;
  }
  
  if (numOfPushUps <= best-1) return 24;
  else if (numOfPushUps >= best) return 25;
  
  return null;
}

//Sit up Formula
int pointsForSitUps(age,numOfSitUps){
  int ageGroup = getAgeGroup(age);
  int worst = 14 - (ageGroup-1);
  int best;
  
  int getBest(ageGroup){ 
    int bestRep;
    
    if(ageGroup < 9) bestRep = 60 - (ageGroup - 1); 
    else if (ageGroup < 11) bestRep = 60 - 9 - ((ageGroup - 9) * 2);
    else if (ageGroup <= 14) bestRep = 60 - 12 - ((ageGroup - 11) * 2);
    
    return bestRep;
  }
  
  best = getBest(ageGroup);
  
  //standard formula for 19 points & below for all age group
  if (numOfSitUps <= worst) return 0; 
  else if (numOfSitUps == worst+1) return 1;
  else if (numOfSitUps == worst+2) return 2;
  else if (numOfSitUps == worst+3) return 3;
  else if (numOfSitUps == worst+4) return 4;
  else if (numOfSitUps == worst+5) return 5;
  else if (numOfSitUps <= worst+7) return 6; 
  else if (numOfSitUps <= worst+9) return 7; 
  else if (numOfSitUps == worst+10) return 8; 
  else if (numOfSitUps == worst+11) return 9; 
  else if (numOfSitUps == worst+12) return 10; 
  else if (numOfSitUps == worst+13) return 11; 
  else if (numOfSitUps == worst+14) return 12; 
  else if (numOfSitUps <= worst+16) return 13; 
  else if (numOfSitUps <= worst+18) return 14; 
  else if (numOfSitUps == worst+19) return 15; 
  else if (numOfSitUps == worst+20) return 16;
  else if (numOfSitUps == worst+21) return 17; 
  else if (numOfSitUps <= worst+23) return 18;
  else if (numOfSitUps <= worst+25) return 19;
  
  // formula for 20 points & above
  if (ageGroup < 10){
    if (numOfSitUps <= best-17) return 20;
    else if (numOfSitUps <= best-13) return 21;
    else if (numOfSitUps <= best-9) return 22;
    else if (numOfSitUps <= best-5) return 23;
  }
  
  switch (ageGroup) {
    case 10:
      if (numOfSitUps <= 33) return 20; //best-16
      else if (numOfSitUps <= 36) return 21; //best-13
      else if (numOfSitUps <= 40) return 22; //best-9
      else if (numOfSitUps <= 44) return 23; //best-5
      break;
    case 11:
      if (numOfSitUps <= 32) return 20; //best-16 
      else if (numOfSitUps <= 35) return 21; //best-13
      else if (numOfSitUps <= 39) return 22; //best-9
      else if (numOfSitUps <= 43) return 23; //best-5
      break;
    case 12:
      if (numOfSitUps <= 31) return 20; //best-15
      else if (numOfSitUps <= 34) return 21; //best-12
      else if (numOfSitUps <= 37) return 22; //best-9
      else if (numOfSitUps <= 41) return 23; //best-5
      break;
    case 13:
      if (numOfSitUps <= 30) return 20; //best-14
      else if (numOfSitUps <= 33) return 21; //best-11
      else if (numOfSitUps <= 36) return 22; //best-8
      else if (numOfSitUps <= 39) return 23; //best-5
      break;
    case 14:
      if (numOfSitUps <= 29) return 20; //best-13
      else if (numOfSitUps <= 32) return 21; //best-10
      else if (numOfSitUps <= 35) return 22; //best-7
      else if (numOfSitUps <= 38) return 23; //best-4
      break;
  }
  
  if (numOfSitUps <= best-1) return 24;
  else if (numOfSitUps >= best) return 25;
  
  return null;
}

// Running Formula
int pointsForRunning(age,runTime){
  int ageGroup = getAgeGroup(age);
  List<String> worstList = ["16:00" , "16:10" , "16:20" , "16:40", "16:50" , "17:00" , "17:10" , "17:20", "17:30" , "17:40" , "17:50" ,"18:00" , "18:10", "18:20"];
  List<String> bestList = ["08:30" , "08:40", "08:50" , "09:10" , "09:20" , "09:30" , "09:40" , "09:50" , "10:00" , "10:10" , "10:20" , "10:30" , "10:40" , "10:50"];
  List<int> scoreList = [50 , 49 , 48 , 47 , 46 , 45 , 44 , 43 , 42 , 41 , 40 , 39 , 38 , 38 , 37 , 37 , 36 , 36 , 35 , 35 , 34 , 33 , 32 , 31 , 30 , 29 , 28 , 27 , 26 , 25 , 24 , 23 , 22 , 21 , 20 , 19 , 18 , 16 , 14 , 12 , 10 , 8 , 6 , 4 , 2 , 1];
  
  String worst = worstList[ageGroup-1];
  String best = bestList[ageGroup-1];
  int scoreIndex = 0;
  
  int getMin(runTime) => int.parse(runTime.substring(0,2));
  int getSec(runTime) => int.parse(runTime.substring(3,4));
  
  int convertTimetoNum(String time) => int.parse(time.replaceAll(RegExp(':'), ''));
  
  int worstNum = convertTimetoNum(worst);
  int bestNum = convertTimetoNum(best);
  int runTimeNum = convertTimetoNum(runTime);
  
  if (runTimeNum == worstNum) return scoreList.last;
  else if (runTimeNum > worstNum) return 0;
  else if (runTimeNum <= bestNum) return scoreList.first;
  else {
    int minDiff = getMin(runTime) - getMin(best);
    int secDiff = getSec(runTime) - getSec(best);
    
    scoreIndex += minDiff * 6 + secDiff;
  }
  
  return scoreList[scoreIndex];
}